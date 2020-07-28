package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

class BidderController extends BaseController{
    def beforeInterceptor = [action:this.&auth]

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [bidderInstanceList: Bidder.list(params), bidderInstanceTotal: Bidder.count()]
    }

    def create() {
        [bidderInstance: new Bidder(params)]
    }
    def bid() {
        [bidderInstance: new Bidder(params)]
    }

    def save() {
        def bidderInstance = new Bidder(params)
        if (!bidderInstance.save(flush: true)) {
            render(view: "create", model: [bidderInstance: bidderInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'bidder.label', default: 'Bidder'), bidderInstance.id])
        redirect(action: "show", id: bidderInstance.id)
    }
    def s_save() {
        def bidderInstance = new Bidder(params)
        if(bidderInstance.amount <= bidderInstance.auction.base_price){
            flash.message="Amount must be greater than BasePrice: NRs.${bidderInstance.auction.base_price} "
            render(view: "bid", model: [bidderInstance: new Bidder(params)])
            return
        }
        if (!bidderInstance.save(flush: true)) {
            render(view: "bid", model: [bidderInstance: bidderInstance])
            return
        }

//        flash.message = message(code: 'default.created.message', args: [message(code: 'bidder.label', default: 'Bidder'), bidderInstance.id])
        redirect(action: "show_auction",controller: 'auction')
    }

    def show(Long id) {
        def bidderInstance = Bidder.get(id)
        if (!bidderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bidder.label', default: 'Bidder'), id])
            redirect(action: "list")
            return
        }

        [bidderInstance: bidderInstance]
    }
    def s_show(Long id) {
        def bidderInstance = Bidder.get(id)
        if (!bidderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bidder.label', default: 'Bidder'), id])
            redirect(action: "list")
            return
        }

        [bidderInstance: bidderInstance]
    }

    def edit(Long id) {
        def bidderInstance = Bidder.get(id)
        if (!bidderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bidder.label', default: 'Bidder'), id])
            redirect(action: "list")
            return
        }

        [bidderInstance: bidderInstance]
    }
    def e_edit(Long id) {
        def bidderInstance = Bidder.get(id)
        if (!bidderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bidder.label', default: 'Bidder'), id])
            redirect(action: "list")
            return
        }

        [bidderInstance: bidderInstance]
    }

    def update(Long id, Long version) {
        def bidderInstance = Bidder.get(id)
        if (!bidderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bidder.label', default: 'Bidder'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (bidderInstance.version > version) {
                bidderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'bidder.label', default: 'Bidder')] as Object[],
                          "Another user has updated this Bidder while you were editing")
                render(view: "edit", model: [bidderInstance: bidderInstance])
                return
            }
        }

        bidderInstance.properties = params

        if (!bidderInstance.save(flush: true)) {
            render(view: "edit", model: [bidderInstance: bidderInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'bidder.label', default: 'Bidder'), bidderInstance.id])
        redirect(action: "show", id: bidderInstance.id)
    }
    def u_update(Long id, Long version) {
        def bidderInstance = Bidder.get(id)
        if (!bidderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bidder.label', default: 'Bidder'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (bidderInstance.version > version) {
                bidderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'bidder.label', default: 'Bidder')] as Object[],
                        "Another user has updated this Bidder while you were editing")
                render(view: "edit", model: [bidderInstance: bidderInstance])
                return
            }
        }

        bidderInstance.properties = params

        Integer max_amt=gadinepal_v1.Bidder.executeQuery("select max(amount) from Bidder where auction=$bidderInstance.auction.id").get(0)
        if(bidderInstance.amount <= max_amt){
            flash.message="Amount must be greater than NRs.${max_amt} "
            render(view: "e_edit", model: [bidderInstance: bidderInstance])
            return
        }

        if (!bidderInstance.save(flush: true)) {
            render(view: "edit", model: [bidderInstance: bidderInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'bidder.label', default: 'Bidder'), bidderInstance.id])
        redirect(controller: "auction", action: "show_auction")
    }

    def delete(Long id) {
        def bidderInstance = Bidder.get(id)
        if (!bidderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bidder.label', default: 'Bidder'), id])
            redirect(action: "list")
            return
        }

        try {
            bidderInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'bidder.label', default: 'Bidder'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'bidder.label', default: 'Bidder'), id])
            redirect(action: "show", id: id)
        }
    }
}
