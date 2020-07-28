package gadinepal_v1


class Rental_acpt {

    String rental_id
    String name

    String address
    Integer phone_num
    String email_id
    Date pick_up_date
    Date drop_off_date




    static constraints = {

        name(blank: false,maxLength:15)
        address(blank: false,maxLength:15)
        phone_num(blank:false,min:10,maxLength:10)
        email_id(email: true, blank: false)
        pick_up_date(blank:false)
        drop_off_date(blank:false)
    }


}
