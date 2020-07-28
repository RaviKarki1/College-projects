package gadinepal_v1

class LoginController{

    def index(){redirect(action:"customer")}
    def signin() {}
    def signup() {}


    def admin() {}
    def customer() {
        [brandInstanceList : Brand.list(),categoryInstanceList:Category.list()]
    }
    def aboutUs() {}
    def ourTeam() {}


    def login(){
        def user = User.findByNameAndPassword(params.username,params.password)
        if (user) {
            session.user = user;
            flash.message="Logged in as ${params.username}"
            redirect(action:"${user.role}")
        }
        else {
            flash.message="Incorrect Username or Password."
            redirect(action:"signin")

        }
    }
    def logout(){
        if(session.user)
        {
            session.user="";
            session.invalidate();
        }
        redirect(action: "customer")
    }

    def save() {
        def userInstance = new User(params)
        userInstance.role='customer'
        if (!userInstance.save(flush: true)) {
            render(view: "signup")
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "signin")
    }

    def check(){

    }
}
