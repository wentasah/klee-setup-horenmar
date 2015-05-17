#include "klee/klee.h"
#include <string.h>
#include <assert.h>


int main(){
        int a, b;

        klee_make_symbolic(&a, sizeof(a), "a");
        memcpy(&b, &a, sizeof(b));

        assert(b != 0);

	return 0;
}
