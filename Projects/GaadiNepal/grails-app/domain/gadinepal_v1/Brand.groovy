package gadinepal_v1

class Brand {
    static hasMany = [vecName:Vehicle,auction:Auction]
    String vec_brand

    String filename

    public String toString() {
        return vec_brand
    }

    static constraints = {
    }
}
