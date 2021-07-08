package set summary "New way to see and navigate directory trees"
package set webpage "https://dystroy.org/broot/"
package set src.git "https://github.com/Canop/broot.git"
package set src.url "https://github.com/Canop/broot/archive/v1.6.1.tar.gz"
package set src.sum "5f97d876aa554be4c67bfd161ef762425f6083da583775c13cc75bf9882f1085"
package set dep.pkg "libgit2"
package set license "MIT"
package set bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
