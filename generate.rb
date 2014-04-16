# encoding: utf-8
wsbody = File.read('template.html')
languages = {
	:bg => {
		:name_title => 'Мартина Радева',
		:text => 'Добре дошли на личната ми страница.',
		:text1 => 'Тук може да намерите връзки за присъствието ми в интернет.',
		:lang_check => 'bgl',
		:language_link => '../en/index.html',
		:language_link_text => 'This site in English',
	},
	:en => {
		:name_title => 'Martina Radeva',
		:text => 'Welcome to my personal homepage.',
		:text1 => 'Here you can find links to my profile in various social networks.',
		:lang_check => 'enl',
		:language_link => '../bg/index.html',
		:language_link_text => 'Страницата на български',
	},
}
languages.each do |language, content|
	temp_text = wsbody.%(content)
	path = '.\\' + language.to_s + '\\index.html'
	# puts path
	puts temp_text
	File.write(path, temp_text)
end