package gadinepal_v1

class MailController extends BaseController{
    def beforeInterceptor = [action:this.&auth]
    
    def index() {}
    def auction_winner() {
        print("this is mailController")


        def auctionId=params.aucId
        printf("auction id:"+auctionId)

        Auction auctionInstance=Auction.findById(auctionId)
        Integer maxBid=Bidder.executeQuery("select max(amount) from Bidder where auction=$auctionInstance.id").get(0)
        print("max BID:"+maxBid)

        Bidder bidderInstance=Bidder.findByAmountAndAuction(maxBid,auctionInstance)

        def email=bidderInstance.user.email

        print("max bidder email:"+email)


        sendMail {
            to "${email}"
            subject "Winner for Auction held on ${auctionInstance.startDate} to ${auctionInstance.endDate}"
            body "Congratulations, you have WON. " +
                    "ItemName:${auctionInstance.item_name}   " +
                    "BasePrice:NRs.${auctionInstance.base_price}   " +
                    "YourBid:NRs.${maxBid}  "
        }
        return
    }
}
