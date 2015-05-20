#include "klee/klee.h"
#include <string.h>
#include <assert.h>

int read_int(){
    int res;
    klee_make_symbolic(&res, sizeof(res), "summand");
    return res;
}

int main(){
        int a, b;
        a = read_int();

        memcpy(&b, &a, sizeof(b));

        assert(b != 0);

	return 0;
}
