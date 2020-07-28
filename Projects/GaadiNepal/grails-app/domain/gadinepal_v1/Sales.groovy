package gadinepal_v1

class Sales {

    String vehicle_name
    String brand
    String category
    String engine_type
    String drive_type
    Integer ground_clearence
    Integer height
    Integer seats
    Integer model_year
    Integer cost
    String filename
    boolean status

    static hasMany = [ sales_reg:Sales_reg ]

    static constraints = {
        vehicle_name(blank: false)
        brand(blank: false)
        category(blank: false)
        model_year(blank: false)
        engine_type(blank: false)
        drive_type(blank: false)
        ground_clearence(blank: false)
        height(blank: false)
        seats(blank: false)
        cost(blank: false)
    }
}
