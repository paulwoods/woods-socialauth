<html>

<head>
	<meta name="layout" content="mainx"/>
	<title>OpenID Logins</title>
</head>

<body>
	<h1>Social Logins</h1>

	<h2>
		<g:link action="login" params="${[provider:'google']}">Login Google</g:link>
	</h2>

	<h2>
		<g:link action="login" params="${[provider:'twitter']}">Login Twitter</g:link>
	</h2>

	<h2>
		<g:link action="login" params="${[provider:'facebook']}">Login Facebook</g:link>
	</h2>

	<h2>
		<g:link action="login" params="${[provider:'linkedin']}">Login Linkedin</g:link>
	</h2>

	<div>
	SocialAuth : <a href="https://code.google.com/p/socialauth/">https://code.google.com/p/socialauth/</a>
	</div>

	<div>
	Source Code : <a href="https://github.com/paulwoods/woods-socialauth">https://github.com/paulwoods/woods-socialauth</a>
	</div>
	<div>
	Web Site : <a href="http://woods-social.cloudfoundry.com/openid/index">http://woods-social.cloudfoundry.com/openid/index</a>
	</div>


</body>


</html>
