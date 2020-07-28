import gadinepal_v1.User

class BootStrap {

    def init = { servletContext ->
        if (User.count() == 0) {
            new User(name: 'sandip', password: 'sandip', email: 'daisandip1234@gmail.com',role: 'customer').save()
            new User(name: 'gaadiNepal', password: 'gaadiNepal', email: 'gaadinepal@gmail.com',role: 'admin').save()
            new User(name: 'dealer', password: 'dealer', email: 'dealer@gmail.com',role: 'dealer').save()
        }
    }
    def destroy = {
    }
}
