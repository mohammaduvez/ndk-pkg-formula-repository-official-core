package set summary "HTTP-server to execute shell commands."
package set git.url "https://github.com/adnanh/webhook.git"
package set src.url "https://github.com/adnanh/webhook/archive/2.8.0.tar.gz"
package set src.sum "c521558083f96bcefef16575a6f3f98ac79c0160fd0073be5e76d6645e068398"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o webhook &&
    run install_bins webhook
}
