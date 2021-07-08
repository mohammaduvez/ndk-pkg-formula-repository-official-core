package set summary "Modern replacement for ps written by Rust"
package set src.git "https://github.com/dalance/procs.git"
package set src.url "https://github.com/dalance/procs/archive/v0.11.9.tar.gz"
package set src.sum "9d17be4c9d733723da6bfd13417a5f73d0f6ea32802db6d94da8f377a4872b6d"
package set license "MIT"
package set bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
