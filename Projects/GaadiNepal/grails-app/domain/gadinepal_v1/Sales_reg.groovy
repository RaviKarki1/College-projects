package gadinepal_v1

import org.hibernate.validator.constraints.Email

class Sales_reg {

    Sales sales
    String name
    String address
    Integer phone_num
    String email

    static belongsTo = Sales

    static constraints = {
        name(blank: false)
        address(blank: false)
        email(blank: false,email: true)
        phone_num(blank: false)

    }
    String toString(){"${this.name}:${this.address}"}

}
