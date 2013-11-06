.PHONY: test docs

dev-nix:
	@echo "Installing the development dependencies..."
	@sudo luarocks install busted

dev-win:
	@echo "Installing the development dependencies..."
	@luarocks install busted

test:
	@echo "Running tests..."
	@busted

docs:
	@docco src/js.lua
	@cp docs/js.html ../gh-pages/docs/index.html
	@cp docs/docco.css ../gh-pages/docs
	@cp -r docs/public ../gh-pages/docs
