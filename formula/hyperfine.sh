package set summary "Command-line benchmarking tool"
package set src.git "https://github.com/sharkdp/hyperfine.git"
package set src.url "https://github.com/sharkdp/hyperfine/archive/v1.11.0.tar.gz"
package set src.sum "740f4826f0933c693fb281e3542d312da9ccc8fd68cebe883359a8085ddd77e9"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
