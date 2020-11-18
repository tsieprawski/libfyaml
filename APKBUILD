# Contributor: Tomasz Sieprawski <tomasz@sieprawski.eu>
# Maintainer: Tomasz Sieprawski <tomasz@sieprawski.eu>
pkgname="fyaml"
pkgver="1.2"
pkgrel=0
pkgdesc="A fancy 1.2 YAML and JSON parser/writer."
url="https://github.com/pantoniou/libfyaml"
arch="all"
options="!check"
license="MIT"
depends=""
makedepends="meson"
install=""
subpackages="$pkgname-dev"
source=""
srcdir="tmpsrc"

build() {
	meson \
		--wrap-mode=nofallback \
		--prefix=/usr \
		--sysconfdir=/etc \
		--mandir=/usr/share/man \
		--localstatedir=/var \
		--buildtype=release \
		. output
	ninja -C output
}

package() {
	DESTDIR="$pkgdir" ninja -C output install
}

fyaml() {
    :
}
