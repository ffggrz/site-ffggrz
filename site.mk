GLUON_FEATURES := \
  autoupdater \
  ebtables-filter-multicast \
  ebtables-filter-ra-dhcp \
  ebtables-limit-arp \
  ebtables-source-filter \
  mesh-batman-adv-15 \
  mesh-vpn-fastd \
  mesh-vpn-fastd-l2tp \
  radv-filterd \
  respondd \
  status-page \
  web-mesh-vpn-fastd \
  web-private-wifi \
  web-advanced \
  web-wizard

GLUON_FEATURES_standard := \
  config-mode-geo-location-osm \
  wireless-encryption-wpa3

GLUON_SITE_PACKAGES := iwinfo

GLUON_SITE_PACKAGES_standard := \
  respondd-module-airtime

DEFAULT_GLUON_RELEASE := 0.6+exp$(shell date '+%Y%m%d')

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

GLUON_REGION ?= eu

GLUON_LANGS ?= en de

GLUON_DEPRECATED ?= upgrade
