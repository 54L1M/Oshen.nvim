-- tests/palette_spec.lua
-- Validates the raw color palette: shape, required keys, and value format.
-- These tests run purely in Lua — no Neovim highlight API needed.

local colors = require("oshen.palette").colors

describe("oshen.palette", function()
  it("exposes a colors table", function()
    assert.is_table(colors)
  end)

  it("every value is a valid 6-digit hex color or NONE", function()
    for name, value in pairs(colors) do
      local ok = value == "NONE" or value:match("^#%x%x%x%x%x%x$") ~= nil
      assert.is_true(ok, ("palette.%s = %q is not a valid hex color or NONE"):format(name, value))
    end
  end)

  -- The five source colors the whole scheme is built around.
  it("contains the five source colors", function()
    local required = { "amber", "cream", "teal", "steel", "navy" }
    for _, key in ipairs(required) do
      assert.is_not_nil(colors[key], "missing source color: " .. key)
    end
  end)

  it("contains background levels: crust, mantle, base", function()
    for _, key in ipairs({ "crust", "mantle", "base" }) do
      assert.is_not_nil(colors[key], "missing background level: " .. key)
    end
  end)

  it("contains surface levels: surface0, surface1, surface2", function()
    for _, key in ipairs({ "surface0", "surface1", "surface2" }) do
      assert.is_not_nil(colors[key], "missing surface level: " .. key)
    end
  end)

  it("contains overlay levels: overlay0, overlay1, overlay2", function()
    for _, key in ipairs({ "overlay0", "overlay1", "overlay2" }) do
      assert.is_not_nil(colors[key], "missing overlay level: " .. key)
    end
  end)

  it("contains accent colors", function()
    local accents = { "peach", "green", "sky", "lavender", "red" }
    for _, key in ipairs(accents) do
      assert.is_not_nil(colors[key], "missing accent color: " .. key)
    end
  end)

  it("none is exactly the string NONE", function()
    assert.equal("NONE", colors.none)
  end)

  -- Sanity-check a few specific values so palette renames don't go unnoticed.
  it("base is darker than surface0 (background layering is correct)", function()
    -- Strip '#' and compare as integers: base < surface0 means base is darker.
    local function to_int(hex)
      return tonumber(hex:sub(2), 16)
    end
    assert.is_true(to_int(colors.base) < to_int(colors.surface0), "base should be darker than surface0")
  end)
end)
