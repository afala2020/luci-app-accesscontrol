include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI Access Control Configuration
LUCI_DEPENDS:=+luci-compat +luci-base  # 基础依赖 + 兼容层
LUCI_CATEGORY:=Applications
LUCI_PKGARCH:=all

PKG_NAME:=luci-app-accesscontrol
PKG_VERSION:=1.0
PKG_RELEASE:=1

include ../../luci.mk

# call BuildPackage - OpenWrt buildroot signature
