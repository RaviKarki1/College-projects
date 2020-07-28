package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

class BrandController extends BaseController{
    def beforeInterceptor = [action:this.&auth,
                             except:'show_n']

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [brandInstanceList: Brand.list(params), brandInstanceTotal: Brand.count()]
    }

    def create() {
        [brandInstance: new Brand(params)]
    }

    def save() {
        def brandInstance = new Brand(params)
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
            def userDir = new File(webRootDir, "/images/payload/brand_logo/"+params.vec_brand+"/")
            userDir.mkdirs()
            uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
            brandInstance.filename = uploadedFile.originalFilename
        }
        if (!brandInstance.save(flush: true)) {
            render(view: "create", model: [brandInstance: brandInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'brand.label', default: 'Brand'), brandInstance.id])
        redirect(action: "show", id: brandInstance.id)
    }

    def show(Long id) {
        def brandInstance = Brand.get(id)
        if (!brandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), id])
            redirect(action: "list")
            return
        }

        [brandInstance: brandInstance]
    }
    def show_n(Long id) {
        def brandInstance = Brand.get(id)
        if (!brandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), id])
            redirect(action: "list")
            return
        }

        def vecList=Vehicle.findAllByBrand(brandInstance)
//        print("vehicle InstanceList:  "+vecList)

        [brandInstance: brandInstance,vehicleInstanceList:vecList]
    }

    def edit(Long id) {
        def brandInstance = Brand.get(id)
        if (!brandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), id])
            redirect(action: "list")
            return
        }

        [brandInstance: brandInstance]
    }

    def update(Long id, Long version) {
        def brandInstance = Brand.get(id)
        //handle uploaded file
        def uploadedFile = request.getFile('payload')

        if(!uploadedFile.empty){
            def webRootDir = servletContext.getRealPath("/")
            printf("WEBROOT"+webRootDir)
            def userDir = new File(webRootDir, "/images/payload/brand_logo/"+params.vec_brand+"/")
            userDir.mkdirs()
            uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
            brandInstance.filename = uploadedFile.originalFilename
        }

        if (!brandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (brandInstance.version > version) {
                brandInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'brand.label', default: 'Brand')] as Object[],
                        "Another user has updated this Brand while you were editing")
                render(view: "edit", model: [brandInstance: brandInstance])
                return
            }
        }

        brandInstance.properties = params

        if (!brandInstance.save(flush: true)) {
            render(view: "edit", model: [brandInstance: brandInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'brand.label', default: 'Brand'), brandInstance.id])
        redirect(action: "show", id: brandInstance.id)
    }

    def delete(Long id) {
        def brandInstance = Brand.get(id)
        if (!brandInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'brand.label', default: 'Brand'), id])
            redirect(action: "list")
            return
        }

        try {
            brandInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'brand.label', default: 'Brand'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'brand.label', default: 'Brand'), id])
            redirect(action: "show", id: id)
        }
    }
}
