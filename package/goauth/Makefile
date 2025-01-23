#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=goauth
PKG_RELEASE:=1
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/goauth
   SECTION:=utils
   CATEGORY:=Utilities
   TITLE:=goauth -- a golang auth engine
endef

define Package/goauth/description
   a golang auth engine
endef

define Build/Compile
cd $(PKG_BUILD_DIR);	\
./buildgoauth.sh
endef

define Package/goauth/install
	$(INSTALL_DIR) $(1)/usr
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/goauth $(1)/usr/bin
endef
$(eval $(call BuildPackage,goauth))
