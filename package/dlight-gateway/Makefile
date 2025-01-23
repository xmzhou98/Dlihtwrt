#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=dlight-gateway
PKG_RELEASE:=1
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/dlight-gateway
   SECTION:=utils
   CATEGORY:=Utilities
   TITLE:=dlight-gateway -- install dlight-gateway package
endef

define Package/dlight-gateway/description
   install dlight-gateway pacakge
endef

define Build/Compile
endef

define Package/dlight-gateway/install
#install openjdk8
	$(INSTALL_DIR) $(1)/opt
	$(INSTALL_DIR) $(1)/opt/dlight-gateway-package
	$(CP) -rf   ./files/* $(1)/opt/dlight-gateway-package/
endef

$(eval $(call BuildPackage,dlight-gateway))
