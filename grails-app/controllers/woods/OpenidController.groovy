package woods

import org.brickred.socialauth.*

class OpenidController {

    def index = {
    }
    
    def login = {
    
		//Create an instance of SocialAuthConfgi object
		SocialAuthConfig config = SocialAuthConfig.getDefault();

		//load configuration. By default load the configuration from oauth_consumer.properties. 
		//You can also pass input stream, properties object or properties file name.
		config.load();

		//Create an instance of SocialAuthManager and set config
		SocialAuthManager manager = new SocialAuthManager();
		manager.setSocialAuthConfig(config);

		//URL of YOUR application which will be called after authentication
		String successUrl = createLink(action:"callback", absolute:true);

		// get Provider URL to which you should redirect for authentication.
		// id can have values "facebook", "twitter", "yahoo" etc. or the OpenID URL
		String url = manager.getAuthenticationUrl(params.provider, successUrl);

		// Store in session
		session.setAttribute("authManager", manager);
		
		redirect url:url
    }
    
   	def callback = {
   		println "#"*80
   		params.each { kv -> println kv }
   		println ""
   		
		// get the auth provider manager from session
		SocialAuthManager manager = (SocialAuthManager)session.getAttribute("authManager")

		// call connect method of manager which returns the provider object. 
		// Pass request parameter map while calling connect method. 
		AuthProvider provider = manager.connect(params)

		session.provider = provider
		
		redirect action:"display"
	}
	
	def display = {
		if(!session.provider) {
			return redirect(action:"index")
		}
		
		// get profile
		
		Profile profile = session.provider.userProfile

		//List<Contact> contactsList = session.provider.contactList
		def contactsList = []
		
		[profile:profile, contacts:contactsList]
	}
	
   	
}

