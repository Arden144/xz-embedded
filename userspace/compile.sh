emcc -I../linux/include/linux -I. \
-s MODULARIZE=1 \
-s EXPORTED_RUNTIME_METHODS="['cwrap']" \
-s EXPORTED_FUNCTIONS="['_decompress','_malloc','_free']" \
-O3 -flto --closure 1 \
-o xz.mjs \
xzminidec.c \
xz_*.o
