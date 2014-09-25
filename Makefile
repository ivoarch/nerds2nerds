PROG = nerds2nerds
INSTALL_DIR = /usr

all:
	@echo 'try: '
	@echo ' make install'

dist:
	@echo creating dist tarball
	@tar czf $(PROG).tgz $(PROG) README

install:
	@echo installing executable file to $(INSTALL_DIR)/bin
	@install -m 755 $(PROG) $(INSTALL_DIR)/bin/$(PROG)

uninstall:
	@echo removing executable file from $(INSTALL_DIR)/bin
	@rm -f $(INSTALL_DIR)/bin/$(PROG)
