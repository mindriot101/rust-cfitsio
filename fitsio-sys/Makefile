all: src/bindings_64.rs src/bindings_32.rs

src/bindings_64.rs: wrapper.h Makefile
ifeq ($(shell uname -m),x86_64)
	bindgen \
		-o $@ \
		--block-extern-crate \
		--opaque-type fitsfile \
		--opaque-type FITSfile \
		--rust-target "1.0" \
		$<
else
	@echo "bindings_64.rs must be generated on a 64 bit processor"
endif

src/bindings_32.rs: wrapper.h Makefile
ifeq ($(shell uname -m),armv7l)
	bindgen \
		-o $@ \
		--block-extern-crate \
		--opaque-type fitsfile \
		--opaque-type FITSfile \
		--rust-target "1.0" \
		$<
else
	@echo "bindings_32.rs must be generated on a 32 bit processor"
endif
