include $(TOPDIR)/rules.mk

PKG_NAME:=hev-socks5-server
PKG_VERSION:=1.8.7
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/heiher/hev-socks5-server.git
PKG_SOURCE_VERSION:=43e62060f96d0f6566b17d0b51937301e3187626
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)/$(PKG_NAME)-$(PKG_VERSION)

#PKG_LICENSE:=GPLv3
#PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=pexcn <i@pexcn.me>

include $(INCLUDE_DIR)/package.mk

define Package/hev-socks5-server
	SECTION:=net
	CATEGORY:=Network
	TITLE:=A simple, lightweight socks5 server for Unix.
	URL:=https://github.com/heiher/hev-socks5-server
endef

define Package/hev-socks5-server/description
A simple, lightweight socks5 server for Unix.
endef

define Package/hev-socks5-server/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bin/hev-socks5-server $(1)/usr/bin
endef

$(eval $(call BuildPackage,hev-socks5-server))