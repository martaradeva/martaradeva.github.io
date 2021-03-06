# encoding: utf-8
require 'yaml'
require 'erb'

website_body = File.read('..\template.html.erb')
languages = YAML.load_file("..\\libraries\\translations.yml")
languages.each do |language, content|
	content[:id] = language.to_s 
	rendered_html = ERB.new(website_body).result(binding)
	path = '..\\' + content[:id] + '\\index.html'
	File.write(path, rendered_html)
end