package set summary "General purpose GPU library"
package set webpage "https://arrayfire.com"
package set src.git "https://github.com/arrayfire/arrayfire.git"
package set src.url "https://github.com/arrayfire/arrayfire/releases/download/v3.8.0/arrayfire-full-3.8.0.tar.bz2"
package set src.sum "dfc1ba61c87258f9ac92a86784b3444445fc4ef6cd51484acc58181c6487ed9e"
package set license "BSD-3-Clause"
package set dep.pkg "boost fftw openblas spdlog"
package set bsystem "cmake"

prepare() {
    sed_in_place 's|find_package(FFTW)|find_package(FFTW3)|' CMakeLists.txt
}
