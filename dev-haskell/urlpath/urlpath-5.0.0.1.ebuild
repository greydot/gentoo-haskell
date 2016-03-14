# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Painfully simple URL deployment"
HOMEPAGE="http://hackage.haskell.org/package/urlpath"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/exceptions:=[profile?]
	dev-haskell/mmorph:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/monad-logger:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/path-extra-0.0.3:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"