package gadinepal_v1

class Bidder {
    Auction auction
    User user
    Integer amount
    static belongsTo = [Auction,User]

    public String toString() {
        return auction.item_name+'::'+user.name+'::'+amount
    }

    static constraints = {
        amount(blank: false)
    }
}
