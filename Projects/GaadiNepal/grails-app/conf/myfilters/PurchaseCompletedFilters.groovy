package myfilters

import gadinepal_v1.ProductPurchase

class PurchaseCompletedFilters {

    def filters = {
        all(controller: 'paypal', action: '(success|notifyPaypal)') {
            before = {
            }
            after = { Map model ->
                def payment = request.payment
                if(payment && payment.status == org.grails.paypal.Payment.COMPLETE) {
                    def purchase = ProductPurchase.findByPayment(payment)
                    if ( !purchase.completed ) {
                        purchase.completed = true
                    }
                }

            }
            afterView = { Exception e ->

                redirect(controller: "login", action:"${session.user.role}")


            }
        }
    }
}
