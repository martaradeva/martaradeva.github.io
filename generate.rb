# encoding: utf-8
wsbody='<!DOCTYPE html>
<!-- BULGARIAN version -->
<html>
<head>
	<title>%{name_title}</title>
	<link rel="stylesheet" type="text/css" href="../styles/marta.css">
</head>
<body>
	<table class="tt">
		<tr> 
			<td class="tdleft"><h1>%{name_title}
			</h1></td>
			<td><img class="pr-image" src="../images/profile_sm.png"></td>
		</tr>
		<tr>
			<td class="tdleft">
				%{text}
			</td>
			<td class="tdright"> 
				<a class="imglink" href="mailto:martaradeva@gmail.com"><img src="../images/social/email.png" border= "0" title="e-mail"></a>
				<a class="imglink" href="https://www.facebook.com/martaradeva"><img src="../images/social/facebook.png" border= "0" title="facebook"></a>
				<a class="imglink" href="https://www.linkedin.com/in/martaradeva"><img src="../images/social/linkedin.png" border= "0" title="linked in"></a>
				<a class="imglink" href="http://issuu.com/noe3/docs/pf-martina-radeva-2013-09-19"><img src="../images/social/portfolio.png" border= "0" title="portfolio"></a>
			</td>
		</tr>
		<tr>
			<td class="tdleft">%{hlink}</td>
			<td class="tdright"></td>
		</tr>
	</table>	
</body>
</html>'
bgtext = {
	:name_title => 'Мартина Радева',
	:text => 'Добре дошли на личната ми страница.<br>Тук може да намерите връзки за присъствието ми в интернет.',
	:hlink => '<a  href="../en/index.html">This site in English</a>',
	:file_url => ".\\bg\\index.html"}
entext = {
	:name_title => 'Martina Radeva',
	:text => 'Welcome to my personal homepage.<br>Here you can find links to my profile in various social networks.',
	:hlink => '<a  href="../bg/index.html">Страницата на български</a>',
	:file_url => ".\\en\\index.html"}
languages = [bgtext, entext]
a="trial_list = wsbody.%(bgtext)
puts trial_list"
languages.each do |lang_curr| 
	temp_text = wsbody.%(lang_curr)
	File.write(lang_curr[:file_url], temp_text)
end



