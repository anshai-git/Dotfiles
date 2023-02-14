local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('pipeline', {
  wilder.branch(
    wilder.cmdline_pipeline({
      fuzzy = 1,
      set_pcre2_pattern = 1,
    }),
    wilder.python_search_pipeline({
      pattern = 'fuzzy',
    })
  ),
})



local highlighters = {
  wilder.pcre2_highlighter(),
  wilder.basic_highlighter(),
}

wilder.set_option('renderer', wilder.renderer_mux({
  [':'] = wilder.popupmenu_renderer({
    highlighter = highlighters,
    highlights = {
      accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#d65d0e'}}),
    },
    prompt_position = 'bottom',
    left = {' ', wilder.popupmenu_devicons()},
    right = {' ', wilder.popupmenu_scrollbar()},
    pumblend = 0,
    -- 'single', 'double', 'rounded' or 'solid'
    -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
    border = 'rounded',
    highlighter = wilder.basic_highlighter(),
    min_width = '90%', -- minimum height of the popupmenu, can also be a number
    min_height = '0', -- to set a fixed height, set max_height to the same value
    max_height = '30%',
    reverse =1 , 
  }),
  ['/'] = wilder.wildmenu_renderer({
    highlighter = highlighters,
    highlights = {
      accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#d65d0e'}}),
    },
    prompt_position = 'bottom',
    left = {' ', wilder.popupmenu_devicons()},
    right = {' ', wilder.popupmenu_scrollbar()},
    pumblend = 0,
    -- 'single', 'double', 'rounded' or 'solid'
    -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
    border = 'rounded',
    highlighter = wilder.basic_highlighter(),
    min_width = '90%', -- minimum height of the popupmenu, can also be a number
    min_height = '0', -- to set a fixed height, set max_height to the same value
    max_height = '30%',
    reverse =1 ,
  }),
}))
