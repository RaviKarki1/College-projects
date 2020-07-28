package gadinepal_v1

import org.grails.paypal.Payment

class ProductPurchase {

    User user
    Sales item
    Payment payment
    boolean completed = false

    static constraints = {
    }
}
