local config = {}

config.opts = {
    theme = "auto",
    output = "SILICON_${year}-${month}-${date}_${time}.png",
    bgColor = vim.g.terminal_color_5,
    -- path to image, must be png
    bgImage = "",
    roundCorner = true,
    windowControls = true,
    lineNumber = true,
    font = "monospace",
    -- no idea what this is
    lineOffset = 1,
    -- padding between lines
    linePad = 2,
    -- Horizontal padding
    padHoriz = 80,
    -- vertical padding
    padVert = 100,
    shadowBlurRadius = 10,
    shadowColor = "#555555",
    shadowOffsetX = 8,
    shadowOffsetY = 8,
    gobble = false,
    debug = false,
}

--- @param opts table
config.setup = function(opts)
    config.opts = vim.tbl_deep_extend("force", config.opts, opts or {})
end

return config
