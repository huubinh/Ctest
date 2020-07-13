#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "libfdr/jrb.h"
#include "c-vector/cvector.h"
#include "mylib/containers.h"
#include "DebugPrintf/debug_printf.h"
#include "igraph/igraph.h"

typedef struct {
  char *station;
  char *route;
} BStop;

void print_vector(igraph_vector_t *v) {
  long int i, l = igraph_vector_size(v);
  for (i = 0; i < l; i++) {
      printf(" %li", (long int) VECTOR(*v)[i]);
  }
  printf("\n");
}

int print_matrix(const igraph_matrix_t *m) {
    long int nrow = igraph_matrix_nrow(m);
    long int ncol = igraph_matrix_ncol(m);
    long int i, j;
    igraph_real_t val;
    printfInfo("nrow = %d ncol = %d", nrow, ncol);
    for (i = 0; i < nrow; i++) {
        printf("%li:", i);
        for (j = 0; j < ncol; j++) {
            val = MATRIX(*m, i, j);
            if (igraph_is_inf(val)) {
                if (val < 0) {
                    printf("-inf");
                } else {
                    printf(" inf");
                }
            } else {
                printf(" %3.0f", val);
            }
        }
        printf("\n");
    }
    return 0;
}

int prints(void *key, void *val, void *u) {
  printfInfo("%s:%s", ((Jval*)key)->s, (char*)u);
  return 0;
}

int collect_id(void *key, void *val, void *u) {
  igraph_vector_t *tmp = (igraph_vector_t*)u;
  int id = ((Jval*)val)->i;
  igraph_vector_push_back(tmp, id);
  return 0;
}

int transfer_to_igraph(void *val, void *u) {
  int value = *(int*)val;
  igraph_vector_push_back((igraph_vector_t*)u, value);
  return 0;
}

int print_bstop(void *key, void *val, void *u) {
  BStop *bstop = ((Jval*)val)->v;
  printfInfo("%d: (%s, %s)",
      ((Jval*)key)->i,
        bstop->station, bstop->route);
}

int main(int argc, char *argv[]) {
  char stop[1000];
  char route[100];
  FILE *f = fopen(argv[1], "r");
  JRB stations = make_jrb();
  JRB id_bstop = make_jrb();
  int id = 0;
  cvector_vector_type(int) from = NULL;
  cvector_vector_type(int) to = NULL;
  cvector_vector_type(int) w = NULL;
  const int kNext = 1;
  const int kChange = 100000;
  while(!feof(f)) {
    fscanf(f, "%[^:]", route);
    fscanf(f, "%*[:]");
    int first = 1;
    int prev, curr;
    while (fscanf(f, " %[^>\n]s", stop) > 0) {
      int len = strlen(stop);
      while (isspace(stop[len - 1]) && len > 0) {
        stop[len - 1] = '\0';
        --len;
      }
      JRB node = jrb_find_str(stations, stop);
      JRB routes_on_stop = NULL;
      if (node) {
        routes_on_stop = node->val.v;
        printfInfo("found station! on %s", stop);
        jrb_foreach(routes_on_stop, prints, stop);
      } else {
        routes_on_stop = make_jrb();
        jrb_insert_str(stations, strdup(stop),
          (Jval){.v = routes_on_stop});
      }
      node = jrb_find_str(routes_on_stop, route);
      if (node) {
        printfError("Duplicate station on route %s (%s)", route, stop);
        return 1;
      } else {
        jrb_insert_str(routes_on_stop, strdup(route), (Jval){.i = id});
        printfInfo("(%s, %s):%d", stop, route, id);
        BStop *bstop = (BStop*)malloc(sizeof(BStop));
        bstop->station = strdup(stop);
        bstop->route = strdup(route);
        jrb_insert_int(id_bstop, id, (Jval){.v = bstop});
        printfInfo("%s - %s", bstop->station, bstop->route);
        jrb_foreach(routes_on_stop, prints, stop);
        if (first) {
          prev = id;
          first = 0;
        } else {
          curr = id;
          cvector_push_back(from, prev);
          cvector_push_back(to, curr);
          cvector_push_back(w, kNext);
          prev = curr;
          printfInfo("Edge(%d, %d):%d",
                from[cvector_size(from) - 1],
                to[cvector_size(to) - 1],
                w[cvector_size(w) - 1]);
        }
        ++id;
      }
      fscanf(f, "%*[>]");
      if (fscanf(f, "%[\n]", stop) > 0) {
        first = 1;
        break;
      }
    }
  }
  const int kVertices = id;
  for (jrb_iter iter = jrb_begin(stations);
       iter != jrb_end(stations); jrb_move(iter)) {
    JRB routes = iter->val.v;
    for (jrb_iter i1 = jrb_begin(routes);
       i1 != jrb_end(routes); jrb_move(i1)) {
      for (jrb_iter i2 = jrb_begin(routes);
          i2 != jrb_end(routes); jrb_move(i2)) {
        if (i1 != i2) {
          cvector_push_back(from, i1->val.i);
          cvector_push_back(to, i2->val.i);
          cvector_push_back(w, kChange);
          printfInfo("Edge(%d, %d):%d",
                from[cvector_size(from) - 1],
                to[cvector_size(to) - 1],
                w[cvector_size(w) - 1]);
        }
      }
    }
  }
  jrb_foreach(id_bstop, print_bstop, NULL);
  // from_ids = get_start(argv[1]);
  igraph_vector_t ifrom, ito;
  igraph_vector_init(&ifrom, 0);
  igraph_vector_init(&ito, 0);
  {
    JRB node = jrb_find_str(stations, argv[2]);
    if (node) {
      jrb_foreach(((JRB)(node->val.v)), collect_id, &ifrom);
    } else {
      printfError("Station %s not found", argv[2]);
      return 1;
    }
    node = jrb_find_str(stations, argv[3]);
    if (node) {
      jrb_foreach(((JRB)(node->val.v)), collect_id, &ito);
    } else {
      printfError("Station %s not found", argv[3]);
      return 1;
    }
  }

  igraph_t g;
  printfInfo("Number of vertices: %d", kVertices);
  igraph_empty(&g, kVertices, IGRAPH_DIRECTED);
  int m = cvector_size(from);
  igraph_vector_t edges;
  igraph_vector_init(&edges, 0);
  for (int i = 0; i < m; ++i) {
    igraph_vector_push_back(&edges, from[i]);
    igraph_vector_push_back(&edges, to[i]);
  }
  igraph_add_edges(&g, &edges, 0);
  printfInfo("Số lượng đỉnh: %d \n", igraph_vcount(&g));
  printfInfo("Số lượng cạnh: %d\n", igraph_ecount(&g));

  igraph_matrix_t res;
  igraph_vector_t weights;
  igraph_vector_init(&weights, 0);
  vec_foreach(w, transfer_to_igraph, &weights);
  igraph_matrix_init(&res, 0, 0);
  igraph_vs_t vs_from;
  igraph_vs_t vs_to;
  igraph_vector_ptr_t vecs, evecs;
  igraph_vector_long_t pred, inbound;
  igraph_vector_ptr_init(&vecs, igraph_vector_size(&ito));
  igraph_vector_ptr_init(&evecs, igraph_vector_size(&ito));
  for (int i = 0; i < igraph_vector_ptr_size(&vecs); i++) {
      VECTOR(vecs)[i] = calloc(1, sizeof(igraph_vector_t));
      igraph_vector_init(VECTOR(vecs)[i], 0);
      VECTOR(evecs)[i] = calloc(1, sizeof(igraph_vector_t));
      igraph_vector_init(VECTOR(evecs)[i], 0);
  }
  igraph_vector_long_init(&pred, 0);
  igraph_vector_long_init(&inbound, 0);
  igraph_vs_vector(&vs_to, &ito);
  long min_cost = -1;
  for (int f = 0; f < igraph_vector_size(&ifrom); ++f) {
    igraph_get_shortest_paths_dijkstra(&g, &vecs,
      &evecs, VECTOR(ifrom)[f], vs_to,
      &weights, IGRAPH_OUT,
      &pred, &inbound);
    printfInfo("Result is");
    long cost = 0;
    for (int i = 0; i < igraph_vector_ptr_size(&vecs); i++) {
        print_vector(VECTOR(vecs)[i]);
        igraph_vector_t *v = VECTOR(evecs)[i];
        int j, l = igraph_vector_size(v);
        for (j = 0; j < l; ++j) {
            printf(" %d:%d", (int)VECTOR(*v)[j],
              (int)VECTOR(weights)[(int)VECTOR(*v)[j]]);
            cost += (int)VECTOR(weights)[(int)VECTOR(*v)[j]];
        }
        if (cost < min_cost || min_cost < 0) {
          min_cost = cost;
        }
        printf("\n");
    }
  }
  printf("Min cost is: %li", min_cost);
  fclose(f);
  return 0;
}