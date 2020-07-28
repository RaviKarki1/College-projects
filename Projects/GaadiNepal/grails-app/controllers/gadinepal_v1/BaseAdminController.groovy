package gadinepal_v1

class BaseAdminController {

    def auth()
    {
        if(!session.user) {
            print("NOT USER")
            redirect(controller: "login", action: "signin")
        }

//        if (!session.user.role == 'admin') {
//            print("NOT ADMIN")
//            redirect(controller: "login", action: "signin")
//        }
    }
}
