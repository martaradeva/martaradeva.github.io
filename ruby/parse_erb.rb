require 'erb'
require 'yaml'

languages = YAML.load_file("..\\libraries\\translations.yml")
language_current = languages[:bg]
# puts language_current
erb_template = File.read('..\template.html.erb')
test_string = ERB.new(erb_template).result
puts test_string
# test_blah = ERB.new(erb_template)
# test_string = test_blah.result
# puts test_string
# File.write('..\rubytest\index.html', test_string)