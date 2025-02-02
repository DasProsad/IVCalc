# Makefile to install ivcalc script

# Define the installation path
INSTALL_DIR=/usr/local/bin
SCRIPT_NAME=ivcalc

# Install ivcalc to /usr/local/bin
install:
	@echo "Installing $(SCRIPT_NAME) to $(INSTALL_DIR)"
	@sudo cp $(SCRIPT_NAME) $(INSTALL_DIR)/$(SCRIPT_NAME)
	@sudo chmod +x $(INSTALL_DIR)/$(SCRIPT_NAME)

# Uninstall ivcalc from /usr/local/bin
uninstall:
	@echo "Uninstalling $(SCRIPT_NAME) from $(INSTALL_DIR)"
	@sudo rm -f $(INSTALL_DIR)/$(SCRIPT_NAME)

# Help message
help:
	@echo "Makefile for installing/uninstalling ivcalc"
	@echo "Usage:"
	@echo "  make install     # Install ivcalc"
	@echo "  make uninstall   # Uninstall ivcalc"
