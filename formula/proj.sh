package set summary "Cartographic Projections Library"
package set webpage "https://proj.org/"
package set src.url "https://github.com/OSGeo/PROJ/releases/download/8.2.1/proj-8.2.1.tar.gz"
package set src.sum "76ed3d0c3a348a6693dfae535e5658bbfd47f71cb7ff7eb96d9f12f7e068b1cf"
package set license "MIT"
package set dep.pkg "libtiff curl sqlite nlohmann-json"
package set dep.cmd "sqlite3"
package set bsystem "cmake"

build() {
    cmakew \
        -DTIFF_INCLUDE_DIR="$libtiff_INCLUDE_DIR" \
        -DTIFF_LIBRARY="$libtiff_LIBRARY_DIR/libtiff.so"
}
