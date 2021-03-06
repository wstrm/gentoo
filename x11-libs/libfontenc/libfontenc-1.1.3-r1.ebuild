# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit xorg-2

DESCRIPTION="X.Org fontenc library"

KEYWORDS="alpha amd64 arm arm64 hppa ia64 ~mips ppc ppc64 s390 ~sh sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris ~x86-winnt"
IUSE=""

RDEPEND="sys-libs/zlib"
DEPEND="${RDEPEND}
	x11-base/xorg-proto"

XORG_CONFIGURE_OPTIONS=(
	--with-encodingsdir="${EPREFIX}/usr/share/fonts/encodings"
)
