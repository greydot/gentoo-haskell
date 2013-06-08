# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A compiler for Fay, a Haskell subset that compiles to JavaScript."
HOMEPAGE="http://fay-lang.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
		dev-haskell/attoparsec:=[profile?]
		dev-haskell/cabal:=[profile?]
		dev-haskell/data-default:=[profile?]
		dev-haskell/ghc-paths:=[profile?]
		dev-haskell/haskeline:=[profile?]
		dev-haskell/haskell-src-exts:=[profile?]
		dev-haskell/hunit:=[profile?]
		>=dev-haskell/language-ecmascript-0.10:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-haskell/optparse-applicative-0.5:=[profile?]
		dev-haskell/pretty-show:=[profile?]
		dev-haskell/safe:=[profile?]
		dev-haskell/split:=[profile?]
		dev-haskell/syb:=[profile?]
		dev-haskell/test-framework:=[profile?]
		dev-haskell/test-framework-hunit:=[profile?]
		dev-haskell/test-framework-th:=[profile?]
		dev-haskell/text:=[profile?]
		dev-haskell/unordered-containers:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		dev-haskell/vector:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
