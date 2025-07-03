	local colors = require("conf.ui.colors")

local a = {
	normal = {
		bg = colors.pink,
		fg = colors.mantle,
	},
	insert = {
		bg = colors.pink,
		fg = colors.mantle,
	},
	command = {
		bg = colors.pink,
		fg = colors.mantle,
	},
	visual = {
		bg = colors.pink,
		fg = colors.mantle,
	},
	replace = {
		bg = colors.red,
		fg = colors.mantle,
	},
	inactive = {
		bg = colors.overlay2,
		fg = colors.text,
	},
}

local b = {
	bg = colors.lavender,
	fg = colors.mantle,
}

local c = {
	bg = "none",
	fg = colors.text,
}

local x = {
	bg = "none",
	fg = colors.text,
}

local y = {
	bg = colors.lavender,
	fg = colors.mantle,
}

local z = {
	bg = colors.pink,
	fg = colors.mantle,
}

-- Return your theme configuration
return {
	normal = {
		a = { bg = a.normal.bg, fg = a.normal.fg },
		b = { bg = b.bg, fg = b.fg },
		c = { bg = c.bg, fg = c.fg },
		x = { bg = x.bg, fg = x.fg },
		y = { bg = y.bg, fg = y.fg },
		z = { bg = z.bg, fg = z.fg },
	},
	insert = {
		a = { bg = a.insert.bg, fg = a.insert.fg },
		b = { bg = b.bg, fg = b.fg },
		c = { bg = c.bg, fg = c.fg },
		x = { bg = x.bg, fg = x.fg },
		y = { bg = y.bg, fg = y.fg },
		z = { bg = z.bg, fg = z.fg },
	},
	visual = {
		a = { bg = a.visual.bg, fg = a.visual.fg },
		b = { bg = b.bg, fg = b.fg },
		c = { bg = c.bg, fg = c.fg },
		x = { bg = x.bg, fg = x.fg },
		y = { bg = y.bg, fg = y.fg },
		z = { bg = z.bg, fg = z.fg },
	},
	replace = {
		a = { bg = a.replace.bg, fg = a.replace.fg },
		b = { bg = b.bg, fg = b.fg },
		c = { bg = c.bg, fg = c.fg },
		x = { bg = x.bg, fg = x.fg },
		y = { bg = y.bg, fg = y.fg },
		z = { bg = z.bg, fg = z.fg },
	},
	command = {
		a = { bg = a.command.bg, fg = a.command.fg },
		b = { bg = b.bg, fg = b.fg },
		c = { bg = c.bg, fg = c.fg },
		x = { bg = x.bg, fg = x.fg },
		y = { bg = y.bg, fg = x.fg },
		z = { bg = z.bg, fg = z.fg },
	},
	inactive = {
		a = { bg = a.inactive.bg, fg = a.inactive.fg },
		b = { bg = b.bg, fg = b.fg },
		c = { bg = c.bg, fg = c.fg },
		x = { bg = x.bg, fg = x.fg },
		y = { bg = y.bg, fg = y.fg },
		z = { bg = z.bg, fg = z.fg },
	},
}
