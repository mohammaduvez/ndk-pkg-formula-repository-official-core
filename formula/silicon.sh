package set summary "Create beautiful image of your source code"
package set git.url "https://github.com/Aloxaf/silicon.git"
package set src.url "https://github.com/Aloxaf/silicon/archive/v0.4.3.tar.gz"
package set src.sum "68d64ade34ac571cf2d092f9a6f124e2c7d0441a91e3ba00ca1c8edcdd008630"
package set license "MIT"
package set dep.cmd "cmake make"
package set bsystem "cargo"

build() {
    if [ "$TARGET_OS_ABI" = 'armeabi-v7a' ] ; then
        run install -d "$ABI_BINARY__DIR"
    else
        cargow install
    fi
}
