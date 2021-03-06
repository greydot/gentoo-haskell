# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit base haskell-cabal

DESCRIPTION="Restricted monad library"
HOMEPAGE="http://hackage.haskell.org/package/rmonad"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="warn-as-error"

RDEPEND=">=dev-haskell/suitable-0.1:=[profile?] <dev-haskell/suitable-0.2:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	dev-lang/ghc
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

PATCHES=("${FILESDIR}"/${PN}-0.8.0.2-ghc-7.8.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag warn-as-error warn-as-error)
}
