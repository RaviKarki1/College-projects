package gadinepal_v1

class Rental {
    String user_id
    String vecname
    String category
    Integer noofseat
    Integer price
    String filename
    boolean status


    static hasMany = [ rent_Rreg_Det: Rent_Rreg_Det ]



    static constraints = {

        vecname(maxlength:15,blank: false)
        category(maxlength:15,blank: true)
        noofseat(maxlength:10,blank: false)
        price(maxlength:5,blank: false)
        user_id(blank: false)
    }

    String toString() {"${this.id}" }
}
