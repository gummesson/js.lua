dev:
	@echo "Installing development dependencies..."
	@luarocks install busted

test:
	@echo "Running tests..."
	@busted
