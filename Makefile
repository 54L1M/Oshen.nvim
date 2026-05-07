NVIM     ?= nvim
TEST_DIR  = .tests
PLENARY   = $(TEST_DIR)/plenary.nvim

.PHONY: test format format-check help

## test         Run the full test suite (fetches plenary if missing)
test: $(PLENARY)
	$(NVIM) --headless --noplugin -u tests/minimal_init.lua \
		-c "PlenaryBustedDirectory tests/ {minimal_init = 'tests/minimal_init.lua', sequential = true}"

$(PLENARY):
	@mkdir -p $(TEST_DIR)
	git clone --depth 1 https://github.com/nvim-lua/plenary.nvim $(PLENARY)

## format       Format all Lua files in-place with StyLua
format:
	stylua lua/ tests/

## format-check Check formatting without writing (useful in CI)
format-check:
	stylua --check lua/ tests/

## help         Show this help message
help:
	@grep -E '^## ' $(MAKEFILE_LIST) | sed 's/^## //'
