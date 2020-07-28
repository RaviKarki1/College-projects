package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

class AuctionController extends BaseAdminController{
    def beforeInterceptor = [action:this.&auth]

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def time_up(){
        Auction.executeUpdate("UPDATE Auction SET status=true WHERE id=${params.aucId}")
        return
    }

    def search() {
        if (params.keywords) {
            printf("###################"+params.keywords)
            def auctionList = Auction.findAllByItem_nameLike("%" + params.keywords + "%");
            def auctionCount = Auction.countByItem_nameLike("%" + params.keywords + "%");
            print("AUC_LIsT"+auctionList)
            print("AUC_COUNT"+auctionCount)
            render(view: "show_auction", model: [auctionInstanceList: auctionList, auctionInstanceTotal: auctionCount])
        } else {
            redirect(action: "show_auction");
        }
    }

    def sort(String vvv){
        printf("###################"+params.keywords)
        def auctionList = Auction.findAllByItem_nameLike("%" + params.vvv + "%");
        def auctionCount = Auction.countByItem_nameLike("%" + params.vvv + "%");
        print("AUC_LIsT"+auctionList)
        print("AUC_COUNT"+auctionCount)
        render(view: "show_auction", model: [auctionInstanceList: auctionList, auctionInstanceTotal: auctionCount])
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [auctionInstanceList: Auction.list(params), auctionInstanceTotal: Auction.count()]
    }
    def show_auction(){
//        def auctionList=Auction.findAllByStatusAndStartDateGreaterThan(false, new Date())
//        [auctionInstanceList: auctionList, auctionInstanceTotal: Auction.count()]

        [auctionInstanceList: Auction.list(params), auctionInstanceTotal: Auction.count()]
    }
    def upcoming_auction(){
//        def auctionList=Auction.findAllByStatusAndStartDateGreaterThan(false, new Date())
//        [auctionInstanceList: auctionList, auctionInstanceTotal: Auction.count()]

        [auctionInstanceList: Auction.list(params), auctionInstanceTotal: Auction.count()]
    }
    def winner_list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [auctionInstanceList: Auction.list(params), auctionInstanceTotal: Auction.count()]
    }



    def create() {
        [auctionInstance: new Auction(params)]
    }
    def place_auction(){
        [auctionInstance: new Auction(params)]
    }

    def save() {
        def auctionInstance = new Auction(params)
        auctionInstance.status=0;
        //handle uploaded file
        def uploadedFile = request.getFile('payload')
        if(!uploadedFile.empty){
//            println "Class: ${uploadedFile.class}"
//            println "Name: ${uploadedFile.name}"
//            println "OriginalFileName: ${uploadedFile.originalFilename}"
//            println "Size: ${uploadedFile.size}"
//            println "ContentType: ${uploadedFile.contentType}"

            def webRootDir = servletContext.getRealPath("/")
            printf("WEBROOT"+webRootDir)
            def userDir = new File(webRootDir, '/images/payload/auction_pictures/'+auctionInstance.user.name+"/")
            userDir.mkdirs()
            uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
            auctionInstance.filename = uploadedFile.originalFilename
        }
        if (!auctionInstance.save(flush: true)) {
            render(view: "create", model: [auctionInstance: auctionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'auction.label', default: 'Auction'), auctionInstance.id])
        redirect(action: "show", id: auctionInstance.id)
    }
    def s_save() {
        def auctionInstance = new Auction(params)
        auctionInstance.status=0;
        //handle uploaded file
        def uploadedFile = request.getFile('payload')
        if(!uploadedFile.empty){
//            println "Class: ${uploadedFile.class}"
//            println "Name: ${uploadedFile.name}"
//            println "OriginalFileName: ${uploadedFile.originalFilename}"
//            println "Size: ${uploadedFile.size}"
//            println "ContentType: ${uploadedFile.contentType}"

            def webRootDir = servletContext.getRealPath("/")
            printf("WEBROOT"+webRootDir)
            def userDir = new File(webRootDir, '/images/payload/auction_pictures/'+auctionInstance.user.name+"/")
            userDir.mkdirs()
            uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
            auctionInstance.filename = uploadedFile.originalFilename
        }
        if (!auctionInstance.save(flush: true)) {
            render(view: "create", model: [auctionInstance: auctionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'auction.label', default: 'Auction'), auctionInstance.id])
        redirect(action: "show", id: auctionInstance.id)
//        redirect(action: "list")
    }

    def show(Long id) {
        def auctionInstance = Auction.get(id)
        if (!auctionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auction.label', default: 'Auction'), id])
            redirect(action: "list")
            return
        }

        def bidderInstanceList=Bidder.findAllByAuction(auctionInstance)
        def maxAmt=Bidder.executeQuery("select max(amount) from Bidder where auction=$auctionInstance.id").get(0)

        [auctionInstance: auctionInstance,bidderInstanceList:bidderInstanceList,maxAmt:maxAmt]
    }
    def s_show(Long id) {
        def auctionInstance = Auction.get(id)
        if (!auctionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auction.label', default: 'Auction'), id])
            redirect(action: "list")
            return
        }

        [auctionInstance: auctionInstance]
    }

    def edit(Long id) {
        def auctionInstance = Auction.get(id)
        if (!auctionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auction.label', default: 'Auction'), id])
            redirect(action: "list")
            return
        }

        [auctionInstance: auctionInstance]
    }

    def update(Long id, Long version) {
        def auctionInstance = Auction.get(id)

        //handle uploaded file
        def uploadedFile = request.getFile('payload')
        if(!uploadedFile.empty){
//            println "Class: ${uploadedFile.class}"
//            println "Name: ${uploadedFile.name}"
//            println "OriginalFileName: ${uploadedFile.originalFilename}"
//            println "Size: ${uploadedFile.size}"
//            println "ContentType: ${uploadedFile.contentType}"

            def webRootDir = servletContext.getRealPath("/")
            printf("WEBROOT"+webRootDir)
            def userDir = new File(webRootDir, '/images/payload/auction_pictures/'+auctionInstance.user.name+"/")
            userDir.mkdirs()
            uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
            auctionInstance.filename = uploadedFile.originalFilename
        }

        if (!auctionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auction.label', default: 'Auction'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (auctionInstance.version > version) {
                auctionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'auction.label', default: 'Auction')] as Object[],
                          "Another user has updated this Auction while you were editing")
                render(view: "edit", model: [auctionInstance: auctionInstance])
                return
            }
        }

        auctionInstance.properties = params

        if (!auctionInstance.save(flush: true)) {
            render(view: "edit", model: [auctionInstance: auctionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'auction.label', default: 'Auction'), auctionInstance.id])
        redirect(action: "show", id: auctionInstance.id)
    }

    def delete(Long id) {
        def auctionInstance = Auction.get(id)
        if (!auctionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'auction.label', default: 'Auction'), id])
            redirect(action: "list")
            return
        }

        try {
            auctionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'auction.label', default: 'Auction'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'auction.label', default: 'Auction'), id])
            redirect(action: "show", id: id)
        }
    }
}
