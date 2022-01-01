package set summary "Library to render SVG files using Cairo"
package set webpage "https://wiki.gnome.org/Projects/LibRsvg"
package set git.url "https://gitlab.gnome.org/GNOME/librsvg.git"
package set src.url "https://download-fallback.gnome.org/sources/librsvg/2.52/librsvg-2.52.4.tar.xz"
package set src.sum "660ec8836a3a91587bc9384920132d4c38d1d1718c67fe160c5213fe4dec2928"
package set license "LGPL-2.1-or-later"
package set dep.pkg "gdk-pixbuf pango"
package set dep.cmd "pkg-config gdk-pixbuf-query-loaders"
package set bsystem "configure cargo"

build() {
    # https://gitlab.gnome.org/GNOME/librsvg/-/issues/411
    if [ -d "/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/" ] ; then
        export PATH="/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/:$PATH"
    fi

    export LDFLAGS="$LDFLAGS -Wl,-z,muldefs"

    if [ "$TARGET_INDEX" -eq 1 ] ; then
        ln -s "$libjpeg_turbo_LIBRARY_DIR/libjpeg.a" "$WORK_DIR/$TIMESTAMP_UNIX/libjpeg.a" || return 1
        ln -s "$gettext_LIBRARY_DIR/libintl.a"       "$WORK_DIR/$TIMESTAMP_UNIX/libintl.a" || return 1
        ln -s "$bzip2_LIBRARY_DIR/libbz2.a"          "$WORK_DIR/$TIMESTAMP_UNIX/libbz2.a"  || return 1
    fi

    configure \
        --enable-tools=yes \
        --enable-pixbuf-loader=yes \
        --enable-introspection=no \
        --disable-static
}
