package gadinepal_v1

class BaseController {

    def auth()
    {
        if(!session.user)
        {
            redirect(controller: "login",action:"signin")
        }
    }
}
