package set summary "QR Code generation"
package set webpage "https://fukuchi.org/works/qrencode"
package set src.git "https://github.com/fukuchi/libqrencode.git"
package set src.url "https://fukuchi.org/works/qrencode/qrencode-4.1.1.tar.gz"
package set src.sum "da448ed4f52aba6bcb0cd48cac0dd51b8692bccc4cd127431402fca6f8171e8e"
package set license "LGPL-2.1-or-later"
package set dep.pkg "libpng"
package set bsystem "cmake"

build() {
    cmakew \
        -DWITH_TOOLS=ON \
        -DWITH_TESTS=OFF \
        -DWITHOUT_PNG=OFF \
        -DPNG_PNG_INCLUDE_DIR="$libpng_INCLUDE_DIR" \
        -DPNG_LIBRARY="$libpng_LIBRARY_DIR/libpng.so" \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so"
}
