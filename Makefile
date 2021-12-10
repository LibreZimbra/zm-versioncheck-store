# SPDX-License-Identifier: AGPL-3.0-or-later

ANT_TARGET = dist

all: build-ant-autover

include build.mk

install:
	$(call mk_install_dir, lib/ext/zimbraadminversioncheck)
	cp build/zm-versioncheck-store-*.jar $(INSTALL_DIR)/lib/ext/zimbraadminversioncheck/zimbraadminversioncheck.jar

clean: clean-ant
