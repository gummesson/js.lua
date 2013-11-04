dev-nix:
	@echo "Installing development dependencies..."
	@sudo luarocks install busted

dev-win:
	@echo "Installing development dependencies..."
	@luarocks install busted

test:
	@echo "Running tests..."
	@busted
