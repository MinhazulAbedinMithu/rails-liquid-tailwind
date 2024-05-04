# config/initializers/liquid_template_handler.rb
ActionView::Template.register_template_handler(:liquid, ->(template) {
  "Liquid::Template.parse(#{template.source.inspect}).render(#{template.locals})"
})
    