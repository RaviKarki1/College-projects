package myfilters

import gadinepal_v1.ProductPurchase
import gadinepal_v1.Sales
import gadinepal_v1.Transaction_det
import gadinepal_v1.User

class PurchaseFilters {

    def filters = {
        all(controller:'paypal', action:'buy') {
            before = {
            }
            after = { Map model ->
                def user = User.get(request.payment.buyerId)
                def item = Sales.findByVehicle_name(request.payment.paymentItems[0].itemName)

                Sales.executeUpdate("update Sales set status=true where id="+item.id)
                new ProductPurchase( user:user, payment:request.payment, item:item).save()


              new Transaction_det(user_id:user.id,username: user.name,itemname: item.vehicle_name,payment: request.payment).save()
//                new Transaction_det(user_id:user.id,username:user.name,itemname:item.vehicle_name,transaction_id: request.payment).save()
                println("user id:  "+user.id+"user name"+user.name+"item name::"+item.vehicle_name+"transaction id"+request.payment)


            }
            afterView = { Exception e ->

            }
        }
    }
}
