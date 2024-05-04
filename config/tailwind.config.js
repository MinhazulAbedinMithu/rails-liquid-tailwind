const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
   /** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/liquid_templates/*.liquid',
    // './app/views/**/*',
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
