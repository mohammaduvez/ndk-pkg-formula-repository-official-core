package set summary "Simple bookmark manager built with Go"
package set git.url "https://github.com/go-shiori/shiori.git"
package set src.url "https://github.com/go-shiori/shiori/archive/refs/tags/v1.5.0.tar.gz"
package set src.sum "c2ebc0f009feb22f891c7ab0fa7b8c0d71e1cfc34a974c7503a702ec07d8e9ee"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o shiori &&
    run install_bins shiori
}
