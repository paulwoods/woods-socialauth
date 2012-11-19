<html>

<head>
	<meta name="layout" content="mainx"/>
	<title>${profile.providerId.capitalize()} Results</title>

	<style type="text/css">

		body {
			background-color: white;
			border: 20px;
		}

		table thead th {
			text-align: left;
			font-weight: normal;
			background-color: #008800;
			color: white;
		}

		table tbody tr:hover {
			background-color: yellow;
		}

		table tbody td {
			vertical-align: top;
		}

	</style>

</head>

<body>
	<h1>${profile.providerId.capitalize()} Profile</h1>

	<table>
	<thead>
	<tr>
		<th>key</th>
		<th>value</th>
	</tr>
	</thead>

	<tbody>
	<tr><td>email</td><td>${profile.email}</td></tr>
	<tr><td>firstName</td><td>${profile.firstName}</td></tr>
	<tr><td>lastName</td><td>${profile.lastName}</td></tr>
	<tr><td>country</td><td>${profile.country}</td></tr>
	<tr><td>language</td><td>${profile.language}</td></tr>
	<tr><td>fullName</td><td>${profile.fullName}</td></tr>
	<tr><td>displayName</td><td>${profile.displayName}</td></tr>
	<tr><td>date of birth</td><td>${profile.dob}</td></tr>
	<tr><td>gender</td><td>${profile.gender}</td></tr>
	<tr><td>location</td><td>${profile.location}</td></tr>
	<tr><td>validatedId</td><td>${profile.validatedId}</td></tr>
	<tr>
		<td>profileImageURL</td>
		<td>${profile.profileImageURL}
		<g:if test="${profile.profileImageURL}">
		<br/><img src="${profile.profileImageURL}"/>
		</g:if>
		</td>
	</tr>
	</tbody>
	</table>

	<hr/>

	<h1>${profile.providerId.capitalize()} Contacts</h1>

	<table>
	<thead>
	<tr>
		<th>ID</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Display Name</th>
		<th>Email</th>
		<th>Other EMail(s)</th>
		<th>Profile URL</th>
		<th>Email Hash</th>
	</tr>
	</thead>
	<tbody>
	<g:each in="${session.provider.contactList}" var="contact">
	<tr>
		<td>${contact.id}</td>
		<td>${contact.firstName}</td>
		<td>${contact.lastName}</td>
		<td>${contact.displayName}</td>
		<td>${contact.email}</td>
		<td>${contact.otherEmails as List}</td>
		<td>${contact.profileUrl}</td>
		<td>${contact.emailHash}</td>
	</tr>
	</g:each>
	</tbody>
	</table>

	<hr/>

</body>

</html>
