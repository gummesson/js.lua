dev:
	@luarocks install busted

test:
	@echo "Running tests..."
	@busted --output=tap --verbose
