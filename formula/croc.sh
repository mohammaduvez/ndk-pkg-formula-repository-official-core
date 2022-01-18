package set summary "Securely send things from one computer to another"
package set git.url "https://github.com/schollz/croc.git"
package set src.url "https://github.com/schollz/croc/archive/v9.5.0.tar.gz"
package set src.sum "0e250ecebc72753991a3442e48f9caadfae2467430a81595b79b5443e2ff523b"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o croc &&
    run install_bins croc
}
