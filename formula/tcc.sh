package set summary "Tiny C compiler"
package set webpage "http://www.tinycc.org/"
package set git.url "https://repo.or.cz/tinycc.git"
package set src.url "https://download.savannah.nongnu.org/releases/tinycc/tcc-0.9.27.tar.bz2"
package set src.sum "de23af78fca90ce32dff2dd45b3432b2334740bb9bb7b05bf60fdbfc396ceb9c"
package set license "LGPL-2.1-or-later;COPYING;https://repo.or.cz/tinycc.git/blob_plain/HEAD:/COPYING"
package set bsystem "make"

prepare() {
    printf 'clean:\n\n' > lib/Makefile
}

build() {
    run "$PACKAGE_BSCRIPT_DIR/configure" \
        --source-path="$PACKAGE_BSCRIPT_DIR" \
        --prefix="$TARGET_INSTALL_DIR" \
        --cpu=$TARGET_OS_ARCH \
        --cc=$CC \
        --ar=$AR \
        --extra-cflags="'$CPPFLAGS $CFLAGS'" \
        --extra-ldflags="'$LDFLAGS'" \
        --enable-cross &&
    makew clean &&
    makew ONE_SOURCE=yes &&
    makew install
}
