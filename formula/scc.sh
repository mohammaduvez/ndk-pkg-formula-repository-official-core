package set summary "Fast and accurate code counter with complexity and COCOMO estimates"
package set git.url "https://github.com/boyter/scc.git"
package set src.url "https://github.com/boyter/scc/archive/v3.0.0.tar.gz"
package set src.sum "01b903e27add5180f5000b649ce6e5088fa2112e080bfca1d61b1832a84a0645"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o scc &&
    run install_bins scc
}
