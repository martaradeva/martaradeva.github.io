# encoding: utf-8
require 'yaml'
require 'erb'

wsbody = File.read('..\template.html.erb')
languages = YAML.load_file("..\\libraries\\translations.yml")
languages.each do |language, content|
	content[:id] = language.to_s 
	temp_text = ERB.new(wsbody).result(binding)
	path = '..\\' + content[:id] + '\\index.html'
	File.write(path, temp_text)
end