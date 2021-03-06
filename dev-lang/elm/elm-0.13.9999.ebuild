# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal git-r3

MY_PN="Elm"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="The Elm language module"
HOMEPAGE="http://elm-lang.org"
#SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"
EGIT_REPO_URI="git://github.com/elm-lang/Elm.git"

LICENSE="BSD"
SLOT="0/${PV}"
#KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # some tests fail downlaods

RDEPEND=">=app-text/pandoc-1.10:=[profile?]
	dev-haskell/aeson:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	>=dev-haskell/binary-0.6.4.0:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?]
	>=dev-haskell/blaze-markup-0.5.1:=[profile?]
	dev-haskell/cmdargs:=[profile?]
	dev-haskell/indents:=[profile?]
	>=dev-haskell/language-ecmascript-0.15:=[profile?] <dev-haskell/language-ecmascript-1.0:=[profile?]
	>=dev-haskell/language-glsl-0.0.2:=
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/parsec-3.1.1:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	dev-haskell/union-find:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-6.12.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9
	test? ( dev-haskell/filemanip
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"

src_prepare() {
	cabal-mksetup

	CABAL_FILE=elm-compiler.cabal cabal_chdeps \
		' -Werror' ' ' \
		'blaze-html >= 0.5 && < 0.8' 'blaze-html >= 0.5' \
		'blaze-markup >= 0.5.1 && < 0.7' 'blaze-markup >= 0.5.1'
}
