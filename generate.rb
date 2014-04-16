# encoding: utf-8
wsbody = File.read('template.html')
languages = {
	'bg' => {
		:name_title => 'Мартина Радева',
		:text => 'Добре дошли на личната ми страница.',
		:text1 => 'Тук може да намерите връзки за присъствието ми в интернет.',
		:hlink => '<a  href="../en/index.html">This site in English</a>',
	},
	'en' => {
		:name_title => 'Martina Radeva',
		:hlink => '<a  href="../bg/index.html">Страницата на български</a>',
		:text => 'Welcome to my personal homepage.',
		:text1 => 'Here you can find links to my profile in various social networks.',
	},
}
languages.each do |language, content|
	temp_text = wsbody.%(content)
	url = '.\\' + language + '\\index.html'
	puts url
	puts temp_text
	File.write(url, temp_text)
end