#include "klee/klee.h"

int read_int(){
    int res;
    klee_make_symbolic(&res, sizeof(res), "summand");
    return res;
}

int main(){
    int total = 0;
    for (int i = 0; i < 5; ++i){
        total += read_int();
    }
    return 0;
}


