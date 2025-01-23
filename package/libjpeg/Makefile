#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libjpeg
PKG_RELEASE:=1
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/libjpeg
   SECTION:=utils
   CATEGORY:=Utilities
   TITLE:=libjpeg -- share library for jpeg
endef

define Package/libjpeg/description
   share library for jpeg
endef

define Package/libjpeg/install
	$(INSTALL_DIR) $(1)/usr
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/.libs/libjpeg.so.8 $(1)/usr/lib/
endef
$(eval $(call BuildPackage,libjpeg))
