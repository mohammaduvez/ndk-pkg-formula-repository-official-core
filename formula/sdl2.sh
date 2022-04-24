package set summary "Low-level access to audio, keyboard, mouse, joystick and graphics"
package set webpage "https://www.libsdl.org"
package set git.url "https://github.com/libsdl-org/SDL.git"
package set src.url "https://libsdl.org/release/SDL2-2.0.20.tar.gz"
package set src.sum "c56aba1d7b5b0e7e999e4a7698c70b63a3394ff9704b5f6e1c57e0c16f04dd06"
package set license "Zlib;LICENSE.txt;https://raw.githubusercontent.com/libsdl-org/SDL/main/LICENSE.txt"
package set bsystem "ndk-build"
package set binbstd "yes"

prepare() {
    ndk_build
}

build() {
    install -d                 "$TARGET_INSTALL_DIR" &&
    cp -rv include             "$TARGET_INSTALL_DIR" &&
    cp -rv libs/$TARGET_OS_ABI "$TARGET_INSTALL_DIR/lib"
}
