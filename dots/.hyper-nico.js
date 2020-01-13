module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'canary',

    // default font size in pixels for all tabs
    fontSize: 13.5,

    // font family with optional fallbacks
    fontFamily: '"Dank Mono", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // terminal text color under BLOCK cursor
    cursorAccentColor: '#000',

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BEAM',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: '#000',

    // terminal selection color
    selectionColor: 'rgba(248,28,229,0.3)',

    // border color (window, tabs)
    borderColor: '#333',

    // custom CSS to embed in the main window
    termCSS: '',

    // line height as a relative unit
    lineHeight: 2,

    // letter spacing as a relative unit
    letterSpacing: 0,

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#201E24',
      red: '#2D2B30',
      green: '#3F3D40',
      yellow: '#413C3E',
      blue: '#423E41',
      magenta: '#4E4A4B',
      cyan: '#6E6765',
      white: '#837E81',
      lightBlack: '#837C78',
      lightRed: '#89827D',
      lightGreen: '#A7A099',
      lightYellow: '#C2BEC1',
      lightBlue: '#C3BCB2',
      lightMagenta: '#CBC5BA',
      lightCyan: '#E3DDD2',
      lightWhite: '#EFE8DC'
    },

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    windowSize: [1600, 900],

    webGLRenderer: false,
    activeTab: '🔥🔥🔥',
    hyperline: {
        plugins: [
          "battery",
          "memory",
          "spotify",
        ]
    },

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['--login'],
  },
  plugins: [
    'hyperlinks',
    'hypercwd',
    "hyper-font-ligatures",
    "hyper-one-dark",
    "hyper-search",
    "hyper-active-tab",
    "hyperline"
  ],
  localPlugins: [
  ]
};
