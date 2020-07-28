package gadinepal_v1

class User {
    String name
    String password
    String email
    String role
    static hasMany = [auction:Auction,bidder:Bidder]

    public String toString() {
        return name
    }

    static constraints = {
        name(blank: false,unique: true)
        password(blank: false, minSize: 5)
        email(blank: false,unique: true,email: true)
        role(blank: false,inList: ['admin','customer'])
    }
}
