# encoding: utf-8
require 'yaml'
wsbody = File.read('..\template.html')
# languages = {
# 	:bg => {
# 		:name_title => 'Мартина Радева',
# 		:text => 'Добре дошли на личната ми страница.',
# 		:text1 => 'Тук може да намерите връзки за присъствието ми в интернет.',
# 		:language_link => '../en/index.html',
# 		:language_link_text => 'This site in English',
# 	},
# 	:en => {
# 		:name_title => 'Martina Radeva',
# 		:text => 'Welcome to my personal homepage.',
# 		:text1 => 'Here you can find links to my profile in various social networks.',
# 		:language_link => '../bg/index.html',
# 		:language_link_text => 'Страницата на български',
# 	},
# }
# temp_yaml = YAML.load_file("..\\libraries\\translations.yml")
languages = YAML.load_file("..\\libraries\\translations.yml")
# rrr = temp_yaml.inspect
# languages = eval(rrr)
languages.each do |language, content|
	content[:current_language] = language.to_s 
	temp_text = wsbody % content
	path = '..\\' + language.to_s + '\\index.html'
	File.write(path, temp_text)
end