include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-qosmate
PKG_VERSION:=1.0.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Markus Hütter <mh@hudra.net>
PKG_LICENSE:=GPL-3.0-or-later

LUCI_TITLE:=LuCI support for QoSmate
LUCI_DEPENDS:=+qosmate +luci-lib-jsonc +lua
LUCI_PKGARCH:=all

include $(TOPDIR)/feeds/luci/luci.mk

define Build/Compile
endef

# call BuildPackage - OpenWrt buildroot signature

$(eval $(call BuildPackage,$(PKG_NAME)))
