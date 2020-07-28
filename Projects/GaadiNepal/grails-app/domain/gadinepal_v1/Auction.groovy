package gadinepal_v1

import com.sun.org.apache.xml.internal.utils.StringToStringTable

class Auction {
    User user
    Brand brand
    Category category

    static hasMany = [bidder:Bidder]
    static belongsTo = [User,Brand,Category]

    String filename
    String item_name
    String description
    Integer base_price
    Date startDate
    Date endDate
    boolean status



    public String toString() {
        return item_name+"  :   "+endDate
    }


    static constraints = {
        item_name(blank: false)
        category(blank: false)
        brand(blank: false)
        description(blank: false)
        base_price(blank: false,min: 1500000, max:50000000)
        startDate(blank: false,min: new Date())
        endDate(blank: false,)
    }
}
