# encoding: utf-8
require 'yaml'

wsbody = File.read('..\template.html')
languages = YAML.load_file("..\\libraries\\translations.yml")
languages.each do |language, content|
	content[:current_language] = language.to_s 
	temp_text = wsbody % content
	path = '..\\' + language.to_s + '\\index.html'
	File.write(path, temp_text)
end