class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: "login",action:"customer")
//		"/"(view:"/index")
		"500"(view:'/error')
	}
}
