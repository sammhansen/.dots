config.load_autoconfig()

c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.page = 'smart'

config.bind('o', 'set-cmd-text -s :open')
config.bind('O', 'set-cmd-text -s :open -t')


c.url.start_pages = "https://google.com"
c.url.default_page = "https://google.com"

c.url.searchengines = {
    'DEFAULT':  'https://google.com/search?hl=en&q={}',
    '!a':       'https://www.amazon.com/s?k={}',
    '!d':       'https://duckduckgo.com/?ia=web&q={}',
    '!dd':      'https://thefreedictionary.com/{}',
    '!e':       'https://www.ebay.com/sch/i.html?_nkw={}',
    '!fb':      'https://www.facebook.com/s.php?q={}',
    '!gh':      'https://github.com/search?o=desc&q={}&s=stars',
    '!gist':    'https://gist.github.com/search?q={}',
    '!gi':      'https://www.google.com/search?tbm=isch&q={}&tbs=imgo:1',
    '!gn':      'https://news.google.com/search?q={}',
    '!ig':      'https://www.instagram.com/explore/tags/{}',
    '!m':       'https://www.google.com/maps/search/{}',
    '!p':       'https://pry.sh/{}',
    '!r':       'https://www.reddit.com/search?q={}',
    '!sd':      'https://slickdeals.net/newsearch.php?q={}&searcharea=deals&searchin=first',
    '!t':       'https://www.thesaurus.com/browse/{}',
    '!tw':      'https://twitter.com/search?q={}',
    '!w':       'https://en.wikipedia.org/wiki/{}',
    '!yelp':    'https://www.yelp.com/search?find_desc={}',
    '!yt':      'https://www.youtube.com/results?search_query={}'
}

# Search engines (cleaned & sorted) {{{
# c.url.searchengines = {
#     "DEFAULT": "https://www.google.com/search?hl=en&q={}",
#     "!a":      "https://www.amazon.com/s?k={}",
#     "!d":      "https://duckduckgo.com/?q={}",
#     "!dd":     "https://www.thefreedictionary.com/{}",
#     "!e":      "https://www.ebay.com/sch/i.html?_nkw={}",
#     "!fb":     "https://www.facebook.com/search/top/?q={}",
#     "!gh":     "https://github.com/search?q={}&type=repositories&s=stars",
#     "!gist":   "https://gist.github.com/search?q={}",
#     "!gi":     "https://www.google.com/search?tbm=isch&q={}",
#     "!gn":     "https://news.google.com/search?q={}",
#     "!ig":     "https://www.instagram.com/explore/tags/{}",
#     "!m":      "https://www.google.com/maps/search/{}",
#     "!p":      "https://pry.sh/{}",
#     "!r":      "https://www.reddit.com/search/?q={}",
#     "!sd":     "https://slickdeals.net/newsearch.php?searcharea=deals&searchin=first&q={}",
#     "!t":      "https://www.thesaurus.com/browse/{}",
#     "!tw":     "https://twitter.com/search?q={}",
#     "!w":      "https://en.wikipedia.org/wiki/{}",
#     "!yelp":   "https://www.yelp.com/search?find_desc={}",
#     "!yt":     "https://www.youtube.com/results?search_query={}"
# }
# }}}

# Catppuccin Mocha palette {{{
palette = {
    "rosewater": "#f5e0dc",
    "flamingo": "#f2cdcd",
    "pink": "#f5c2e7",
    "mauve": "#cba6f7",
    "red": "#f38ba8",
    "maroon": "#eba0ac",
    "peach": "#fab387",
    "yellow": "#f9e2af",
    "green": "#a6e3a1",
    "teal": "#94e2d5",
    "sky": "#89dceb",
    "sapphire": "#74c7ec",
    "blue": "#89b4fa",
    "lavender": "#b4befe",
    "text": "#cdd6f4",
    "subtext1": "#bac2de",
    "subtext0": "#a6adc8",
    "overlay2": "#9399b2",
    "overlay1": "#7f849c",
    "overlay0": "#6c7086",
    "surface2": "#585b70",
    "surface1": "#45475a",
    "surface0": "#313244",
    "base": "#1e1e2e",
    "mantle": "#181825",
    "crust": "#11111b",
}
# }}}

# qutebrowser color theme setup (mocha) {{{
samecolorrows = True  # set to False if you want alternating row colors

## Completion
c.colors.completion.category.bg = palette["base"]
c.colors.completion.category.border.bottom = palette["mantle"]
c.colors.completion.category.border.top = palette["overlay2"]
c.colors.completion.category.fg = palette["green"]
c.colors.completion.even.bg = palette["mantle"]
c.colors.completion.odd.bg = palette["mantle"] if samecolorrows else palette["crust"]
c.colors.completion.fg = palette["subtext0"]
c.colors.completion.item.selected.bg = palette["surface2"]
c.colors.completion.item.selected.border.bottom = palette["surface2"]
c.colors.completion.item.selected.border.top = palette["surface2"]
c.colors.completion.item.selected.fg = palette["text"]
c.colors.completion.item.selected.match.fg = palette["rosewater"]
c.colors.completion.match.fg = palette["text"]
c.colors.completion.scrollbar.bg = palette["crust"]
c.colors.completion.scrollbar.fg = palette["surface2"]

## Downloads
c.colors.downloads.bar.bg = palette["base"]
c.colors.downloads.error.bg = palette["base"]
c.colors.downloads.start.bg = palette["base"]
c.colors.downloads.stop.bg = palette["base"]
c.colors.downloads.error.fg = palette["red"]
c.colors.downloads.start.fg = palette["blue"]
c.colors.downloads.stop.fg = palette["green"]
c.colors.downloads.system.bg = "none"
c.colors.downloads.system.fg = "none"

## Hints
c.colors.hints.bg = palette["peach"]
c.colors.hints.fg = palette["mantle"]
c.hints.border = f"1px solid {palette['mantle']}"
c.colors.hints.match.fg = palette["subtext1"]

## Keyhints
c.colors.keyhint.bg = palette["mantle"]
c.colors.keyhint.fg = palette["text"]
c.colors.keyhint.suffix.fg = palette["subtext1"]

## Messages
c.colors.messages.error.bg = palette["overlay0"]
c.colors.messages.error.border = palette["mantle"]
c.colors.messages.error.fg = palette["red"]
c.colors.messages.info.bg = palette["overlay0"]
c.colors.messages.info.border = palette["mantle"]
c.colors.messages.info.fg = palette["text"]
c.colors.messages.warning.bg = palette["overlay0"]
c.colors.messages.warning.border = palette["mantle"]
c.colors.messages.warning.fg = palette["peach"]

## Prompts
c.colors.prompts.bg = palette["mantle"]
c.colors.prompts.border = f"1px solid {palette['overlay0']}"
c.colors.prompts.fg = palette["text"]
c.colors.prompts.selected.bg = palette["surface2"]
c.colors.prompts.selected.fg = palette["rosewater"]

## Statusbar
c.colors.statusbar.normal.bg = palette["base"]
c.colors.statusbar.insert.bg = palette["crust"]
c.colors.statusbar.command.bg = palette["base"]
c.colors.statusbar.caret.bg = palette["base"]
c.colors.statusbar.caret.selection.bg = palette["base"]
c.colors.statusbar.progress.bg = palette["base"]
c.colors.statusbar.passthrough.bg = palette["base"]

c.colors.statusbar.normal.fg = palette["text"]
c.colors.statusbar.insert.fg = palette["rosewater"]
c.colors.statusbar.command.fg = palette["text"]
c.colors.statusbar.passthrough.fg = palette["peach"]
c.colors.statusbar.caret.fg = palette["peach"]
c.colors.statusbar.caret.selection.fg = palette["peach"]
c.colors.statusbar.url.error.fg = palette["red"]
c.colors.statusbar.url.fg = palette["text"]
c.colors.statusbar.url.hover.fg = palette["sky"]
c.colors.statusbar.url.success.http.fg = palette["teal"]
c.colors.statusbar.url.success.https.fg = palette["green"]
c.colors.statusbar.url.warn.fg = palette["yellow"]

c.colors.statusbar.private.bg = palette["mantle"]
c.colors.statusbar.private.fg = palette["subtext1"]
c.colors.statusbar.command.private.bg = palette["base"]
c.colors.statusbar.command.private.fg = palette["subtext1"]

## Tabs
c.colors.tabs.bar.bg = palette["crust"]
c.colors.tabs.even.bg = palette["surface2"]
c.colors.tabs.odd.bg = palette["surface1"]
c.colors.tabs.even.fg = palette["overlay2"]
c.colors.tabs.odd.fg = palette["overlay2"]
c.colors.tabs.indicator.error = palette["red"]
c.colors.tabs.indicator.system = "none"
c.colors.tabs.selected.even.bg = palette["base"]
c.colors.tabs.selected.odd.bg = palette["base"]
c.colors.tabs.selected.even.fg = palette["text"]
c.colors.tabs.selected.odd.fg = palette["text"]

## Context menu
c.colors.contextmenu.menu.bg = palette["base"]
c.colors.contextmenu.menu.fg = palette["text"]
c.colors.contextmenu.disabled.bg = palette["mantle"]
c.colors.contextmenu.disabled.fg = palette["overlay0"]
c.colors.contextmenu.selected.bg = palette["overlay0"]
c.colors.contextmenu.selected.fg = palette["rosewater"]
# }}}


