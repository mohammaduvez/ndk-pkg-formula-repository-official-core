package set summary "Framework for layout and rendering of i18n text"
package set webpage "https://www.pango.org"
package set git.url "https://gitlab.gnome.org/GNOME/pango.git"
package set src.url "https://download.gnome.org/sources/pango/1.50/pango-1.50.3.tar.xz"
package set src.sum "4add05edf51c1fb375a1ccde7498914120e23cb280dd7395b1aeb441f1838a4c"
package set license "LGPL-2.0-or-later"
package set dep.cmd "pkg-config glib-mkenums"
package set dep.pkg "cairo fribidi harfbuzz"
package set bsystem "meson"

build() {
    mesonw \
        -Dgtk_doc=false \
        -Dinstall-tests=false \
        -Dcairo=enabled \
        -Dfreetype=enabled \
        -Dfontconfig=enabled
}
