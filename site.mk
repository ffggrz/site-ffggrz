##	gluon site.mk makefile example

##	GLUON_FEATURES
#		Specify Gluon features/packages to enable;
#		Gluon will automatically enable a set of packages
#		depending on the combination of features listed

GLUON_FEATURES := \
	respondd \
	autoupdater \
	config-mode-autoupdater \
	config-mode-contact-info \
	config-mode-geo-location \
	config-mode-hostname \
	config-mode-mesh-vpn \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	web-admin \
	web-autoupdater \
	web-mesh-vpn-select \
	web-node-role \
	web-network \
	web-private-wifi \
	web-wifi-config \
	neighbour-info \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	mesh-vpn-tunneldigger \
	tunneldigger-watchdog \
	radvd \
	radv-filterd \
	status-page

##	GLUON_SITE_PACKAGES
#		Specify additional Gluon/LEDE packages to include here;
#		A minus sign may be prepended to remove a packages from the
#		selection that would be enabled by default or due to the
#		chosen feature flags

GLUON_SITE_PACKAGES := haveged iwinfo respondd-module-airtime

##	DEFAULT_GLUON_RELEASE
#		version string to use for images
#		gluon relies on
#			opkg compare-versions "$1" '>>' "$2"
#		to decide if a version is newer or not.

DEFAULT_GLUON_RELEASE := 0.6+exp$(shell date '+%Y%m%d')

# Variables set with ?= can be overwritten from the command line

##	GLUON_RELEASE
#		call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#		e.g.:
#			$ make images GLUON_RELEASE=23.42+5
#		would generate images named like this:
#			gluon-ff%site_code%-23.42+5-%router_model%.bin

GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de

# Mesh protocol
GLUON_WLAN_MESH ?= 11s

# auch als "kaputt" deklarierte Firmware bauen
BROKEN ?= 1
