package gadinepal_v1

class Category {
    static hasMany = [vecName:Vehicle,auction:Auction]
    String vec_category

    public String toString() {
        return vec_category
    }

    static constraints = {
    }
}
