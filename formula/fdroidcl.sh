package set summary "F-Droid client"
package set git.url "https://github.com/mvdan/fdroidcl.git"
package set src.url "https://github.com/mvdan/fdroidcl/archive/refs/tags/v0.5.0.tar.gz"
package set src.sum "532a8c4c93216cbf13378ff409c06a08d48e8baee6119a50ed43dc0ce9ec7879"
package set license "BSD"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o fdroidcl &&
    run install_bins fdroidcl
}
