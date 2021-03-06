# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="GLFW-b"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Bindings to GLFW OpenGL library"
HOMEPAGE="http://hackage.haskell.org/package/GLFW-b"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # needs access to video driver

RDEPEND=">=dev-haskell/bindings-glfw-0.1:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.3
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4 )
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	CABAL_FILE=${MY_PN}.cabal cabal_chdeps \
		'bindings-GLFW == 0.1.*' 'bindings-GLFW >= 0.1'
}
