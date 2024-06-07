PWD = $(shell pwd)
HOME = $(shell echo $$HOME)
TYPST_PACKAGE_NAME = fzu-report
TYPST_PACKAGES = $(HOME)/.local/share/typst/packages
TYPST_PACKAGE_VERSION = 0.1.0

local-setup:
	rm -rf $(TYPST_PACKAGES)/local/$(TYPST_PACKAGE_NAME)
	mkdir -p $(TYPST_PACKAGES)/local/$(TYPST_PACKAGE_NAME)
	ln -s $(PWD) $(TYPST_PACKAGES)/local/$(TYPST_PACKAGE_NAME)/$(TYPST_PACKAGE_VERSION)