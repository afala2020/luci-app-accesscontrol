include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-accesscontrol
PKG_VERSION:=1
PKG_RELEASE:=11

# 定义菜单层级和依赖（必须严格匹配OpenWrt规范）
define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=Applications
  TITLE:=Network Access Control
  DEPENDS:=+libubus +libuci +kmod-ipt-filter
  PKGARCH:=all
endef

# 声明Luci组件属性（与官方格式一致）
LUCI_TITLE:=Access Control Configuration
LUCI_DEPENDS:=+kmod-ipt-filter +iptables-mod-filter
LUCI_PKGARCH:=all
LUCI_COMPAT:=luci_21_02  # 根据OpenWrt主版本修改（如22.03用luci_22_03）

# 引用路径必须指向官方feeds目录
include $(TOPDIR)/feeds/luci/luci.mk

# 必须添加BuildPackage调用
$(eval $(call BuildPackage,$(PKG_NAME)))
