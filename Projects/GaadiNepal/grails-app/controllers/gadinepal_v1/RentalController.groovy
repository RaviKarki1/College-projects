package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

class RentalController extends BaseController  {

    def beforeInterceptor=[action:this.&auth ]
    def auth()
    {
        if(!session.user.id)
        {
            redirect(controller: "login", action: "signin" )
        }
    }

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [rentalInstanceList: Rental.list(params), rentalInstanceTotal: Rental.count()]
    }
    def admin_list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [rentalInstanceList: Rental.list(params), rentalInstanceTotal: Rental.count()]
    }
    def return_rent(){
        Rental.executeUpdate("update Rental set status=false where id=${params.id}")
        redirect(action: "admin_list", params: params)
    }

    def create() {
        [rentalInstance: new Rental(params)]
    }

    def save() {
        def rentalInstance = new Rental(params)
        rentalInstance.status=0;

        //handle uploaded file
        def uploadedFile = request.getFile('payload')
        if(!uploadedFile.empty){
            println "Class: ${uploadedFile.class}"
            println "Name: ${uploadedFile.name}"
            println "OriginalFileName: ${uploadedFile.originalFilename}"
            println "Size: ${uploadedFile.size}"
            println "ContentType: ${uploadedFile.contentType}"

            def webRootDir = servletContext.getRealPath("/")
            printf("WEBROOT"+webRootDir)
            def userDir = new File(webRootDir, "/images/payload/rental/")
            userDir.mkdirs()
            uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
            rentalInstance.filename = uploadedFile.originalFilename
        }

        if (!rentalInstance.save(flush: true)) {
            render(view: "create", model: [rentalInstance: rentalInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'rental.label', default: 'Rental'), rentalInstance.id])
        redirect(action: "show", id: rentalInstance.id)
    }

    def show(Long id) {
        def rentalInstance = Rental.get(id)



        if (!rentalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rental.label', default: 'Rental'), id])
            redirect(action: "list")
            return
        }

        // taking id of rental
        session.rental_id=id
        [rentalInstance: rentalInstance]


    }

    def s_show(Long id) {
        def rentalInstance = Rental.get(id)
        session.rental_id=id



        if (!rentalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rental.label', default: 'Rental'), id])
            redirect(action: "list")
            return
        }

        // taking id of rental
        //session.rental_id=id

        [rentalInstance: rentalInstance]


    }


    def edit(Long id) {
        def rentalInstance = Rental.get(id)
        if (!rentalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rental.label', default: 'Rental'), id])
            redirect(action: "list")
            return
        }

        [rentalInstance: rentalInstance]
    }

    def update(Long id, Long version) {
        def rentalInstance = Rental.get(id)

        //handle uploaded file
//        def uploadedFile = request.getFile('payload')
//        if(!uploadedFile.empty){
//            def webRootDir = servletContext.getRealPath("/")
//            printf("WEBROOT"+webRootDir)
//            def userDir = new File(webRootDir, "/images/payload/rental/")
//            userDir.mkdirs()
//            uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
//            rentalInstance.filename = uploadedFile.originalFilename
//        }

        if (!rentalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rental.label', default: 'Rental'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (rentalInstance.version > version) {
                rentalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rental.label', default: 'Rental')] as Object[],
                          "Another user has updated this Rental while you were editing")
                render(view: "edit", model: [rentalInstance: rentalInstance])
                return
            }
        }

        rentalInstance.properties = params

        if (!rentalInstance.save(flush: true)) {
            render(view: "edit", model: [rentalInstance: rentalInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'rental.label', default: 'Rental'), rentalInstance.id])
        redirect(action: "show", id: rentalInstance.id)
    }

    def delete(Long id) {
        def rentalInstance = Rental.get(id)
        if (!rentalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rental.label', default: 'Rental'), id])
            redirect(action: "list")
            return
        }

        try {
            rentalInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'rental.label', default: 'Rental'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'rental.label', default: 'Rental'), id])
            redirect(action: "show", id: id)
        }
    }
    def place_rental()
    {

        [rentalInstance: new Rental(params)]


        //render 'here'
    }

    def view_rental()
    {
        def rentalList=Rental.findAll{ (user_id != session.user.id)}
        //[auctionInstanceList: rentalList, auctionInstanceTotal: Auction.count()]
        [rentalInstanceList: rentalList, rentalInstanceTotal: Rental.count()]
    }

    def view_my_rental()
    {
        def rentalList=Rental.findAll{ (user_id == session.user.id)}
        //[auctionInstanceList: rentalList, auctionInstanceTotal: Auction.count()]
        [rentalInstanceList: rentalList, rentalInstanceTotal: Rental.count()]
    }



        def search()
        {
            if(params.keywords)
            {
//                def questionsList = Question.findAllByQuestionLikeOrOption1Like("%"+params.keywords+"%","%"+params.keywords+"%");
//                render(view: "list",model: [questions:questionsList,questionInstanceTotal:questionsList.size(),params: params])

                def rentalList=Rental.findAllByNoofseat(params.keywords);
                render(view: "List", model:[rentalInstanceList: rentalList, rentalInstanceTotal: rentalList.size()])

            }else
            {
                redirect(action: "list");
            }
        }

}
