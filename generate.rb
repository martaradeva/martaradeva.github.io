# encoding: utf-8
wsbody = File.read('template.html')
languages = {
	:bgtext => {
		:name_title => 'Мартина Радева',
		:text => 'Добре дошли на личната ми страница.',
		:text1 => 'Тук може да намерите връзки за присъствието ми в интернет.',
		:hlink => '<a  href="../en/index.html">This site in English</a>',
		:file_url => ".\\bg\\index.html"
	},
	:entext => {
		:name_title => 'Martina Radeva',
		:hlink => '<a  href="../bg/index.html">Страницата на български</a>',
		:text => 'Welcome to my personal homepage.',
		:text1 => 'Here you can find links to my profile in various social networks.',
		:file_url => ".\\en\\index.html"
	},
}
languages.each do |language, content|
	temp_text = wsbody.%(content)
	# puts temp_text
	File.write(content[:file_url], temp_text)
end