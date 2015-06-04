all: _build/klee whole-program-llvm/.git

_build/klee: klee/.git _build/llvm _build/stp
	mkdir -p $@
	cd $@ && $(CURDIR)/klee/configure --with-stp=$(CURDIR)/_build/stp  --with-llvmsrc=$(CURDIR)/llvm --with-llvmobj=$(CURDIR)/_build/llvm
	cd $@ && $(MAKE) DISABLE_ASSERTIONS=0 ENABLE_OPTIMIZED=1 ENABLE_SHARED=0


_build/llvm: llvm/tools/clang llvm/projects/compiler-rt
	mkdir -p $@
	cd $@ && $(CURDIR)/llvm/configure --enable-optimized --enable-assertions
	cd $@ && $(MAKE)

_build/stp: stp/.git
	mkdir -p $@
	cd $@ && cmake -DBUILD_SHARED_LIBS:BOOL=OFF -DENABLE_PYTHON_INTERFACE:BOOL=OFF $(CURDIR)/stp
	cd $@ && $(MAKE)

llvm/tools/clang: clang/.git llvm/.git
	ln -sr $(<D) $@

llvm/projects/compiler-rt: compiler-rt/.git llvm/.git
	ln -sr $(<D) $@

lock := $(shell mktemp -u /tmp/klee-setup.XXXXXXXX)
%/.git:
	flock $(lock) git submodule init $(@D)
	git submodule update $(@D)
