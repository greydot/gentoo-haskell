# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Painless 2D vector graphics, animations and simulations"
HOMEPAGE="http://gloss.ouroborus.net"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="explicitbackend glfw +glut"

RDEPEND=">=dev-haskell/bmp-1.2:=[profile?] <dev-haskell/bmp-1.3:=[profile?]
	>=dev-haskell/gloss-rendering-1.9.3:=[profile?] <dev-haskell/gloss-rendering-1.9.4:=[profile?]
	>=dev-haskell/glut-2.7:=[profile?] <dev-haskell/glut-2.8:=[profile?]
	>=dev-haskell/opengl-2.12:=[profile?] <dev-haskell/opengl-2.13:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	glfw? ( >=dev-haskell/glfw-b-0.1.4.1:=[profile?] <dev-haskell/glfw-b-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag explicitbackend explicitbackend) \
		$(cabal_flag glfw glfw) \
		$(cabal_flag glut glut)
}
