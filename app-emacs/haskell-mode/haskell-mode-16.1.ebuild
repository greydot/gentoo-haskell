# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit elisp

DESCRIPTION="Mode for editing (and running) Haskell programs in Emacs"
HOMEPAGE="http://projects.haskell.org/haskellmode-emacs/
	http://www.haskell.org/haskellwiki/Emacs#Haskell-mode"
SRC_URI="https://github.com/haskell/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+ FDL-1.2+"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"

SITEFILE="50${PN}-gentoo.el"
ELISP_TEXINFO="doc/haskell-mode.texi"
DOCS="NEWS README.md"

src_prepare() {
	# We install the logo in SITEETC, not in SITELISP
	# https://github.com/haskell/haskell-mode/issues/102
	sed -i -e "/defconst haskell-process-logo/{n;" \
		-e "s:(.*\"\\(.*\\)\".*):\"${SITEETC}/${PN}/\\1\":}" \
		haskell-process.el || die
}

src_compile() {
	emake all
	elisp_src_compile
}

src_test() {
	# perform tests in a separate directory #504660
	mkdir test && cp *.el Makefile test || die
	emake -C test check
}

src_install() {
	elisp_src_install
	insinto "${SITEETC}/${PN}"
	doins logo.svg
	if [ -f haskell-mode-autoloads.el ]
	then
		elisp-make-autoload-file haskell-mode-autoloads.el
	else
		die "haskell-mode-autoloads not found."
	fi
}

pkg_postinst() {
	elisp-site-regen
}
