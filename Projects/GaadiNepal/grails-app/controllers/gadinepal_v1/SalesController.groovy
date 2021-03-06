package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

class SalesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [salesInstanceList: Sales.list(params), salesInstanceTotal: Sales.count()]
    }


    def cus_list()
    {
        [salesInstanceList: Sales.list(params), salesInstanceTotal: Sales.count()]
    }

    def create() {
        [salesInstance: new Sales(params)]
    }

    def add_for_sales()
    {
        [salesInstance: new Sales(params)]
    }

    def save() {
        def salesInstance = new Sales(params)
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
            salesInstance.filename = uploadedFile.originalFilename
        }
        if (!salesInstance.save(flush: true)) {
            render(view: "create", model: [salesInstance: salesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'sales.label', default: 'Sales'), salesInstance.id])
        redirect(action: "show", id: salesInstance.id)
    }

    def show(Long id) {
        def salesInstance = Sales.get(id)
        if (!salesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales.label', default: 'Sales'), id])
            redirect(action: "list")
            return
        }
        session.sales_id=id
        [salesInstance: salesInstance]
    }

    def cus_show(Long id)
    {
        def salesInstance = Sales.get(id)
        if (!salesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales.label', default: 'Sales'), id])
            redirect(action: "list")
            return
        }

        [salesInstance: salesInstance]
    }

    def edit(Long id) {
        def salesInstance = Sales.get(id)
        if (!salesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales.label', default: 'Sales'), id])
            redirect(action: "list")
            return
        }

        [salesInstance: salesInstance]
    }

    def update(Long id, Long version) {
        def salesInstance = Sales.get(id)
        if (!salesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales.label', default: 'Sales'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (salesInstance.version > version) {
                salesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'sales.label', default: 'Sales')] as Object[],
                        "Another user has updated this Sales while you were editing")
                render(view: "edit", model: [salesInstance: salesInstance])
                return
            }
        }

        salesInstance.properties = params

        if (!salesInstance.save(flush: true)) {
            render(view: "edit", model: [salesInstance: salesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'sales.label', default: 'Sales'), salesInstance.id])
        redirect(action: "show", id: salesInstance.id)
    }

    def delete(Long id) {
        def salesInstance = Sales.get(id)
        if (!salesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales.label', default: 'Sales'), id])
            redirect(action: "list")
            return
        }

        try {
            salesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sales.label', default: 'Sales'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sales.label', default: 'Sales'), id])
            redirect(action: "show", id: id)
        }
    }
}
