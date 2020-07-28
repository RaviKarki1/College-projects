package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

class VehicleController extends BaseController{
    def beforeInterceptor = [action:this.&auth,
                             except:['show','user_show']]

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [vehicleInstanceList: Vehicle.list(params), vehicleInstanceTotal: Vehicle.count()]
    }

    def create() {
        [vehicleInstance: new Vehicle(params)]
    }

    def save() {
        def vehicleInstance = new Vehicle(params)
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
            def userDir = new File(webRootDir, "/images/payload/vehicle_pictures/"+
                    vehicleInstance.brand.vec_brand+'/'+vehicleInstance.model+"/")
            userDir.mkdirs()
            uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
            vehicleInstance.filename = uploadedFile.originalFilename
        }
        if (!vehicleInstance.save(flush: true)) {
            render(view: "create", model: [vehicleInstance: vehicleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), vehicleInstance.id])
        redirect(action: "show", id: vehicleInstance.id)
    }

    def show(Long id) {
        def vehicleInstance = Vehicle.get(id)
        if (!vehicleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), id])
            redirect(action: "list")
            return
        }

        [vehicleInstance: vehicleInstance]
    }
    def user_show(Long id) {
        def vehicleInstance = Vehicle.get(id)
        if (!vehicleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), id])
            redirect(action: "list")
            return
        }

        def similarVehicleList=Vehicle.findAllByCategory(vehicleInstance.category)
//        print("user SHOW"+similarVehicleList)

        [vehicleInstance: vehicleInstance,similarVehicleList:similarVehicleList]
    }

    def edit(Long id) {
        def vehicleInstance = Vehicle.get(id)
        if (!vehicleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), id])
            redirect(action: "list")
            return
        }

        [vehicleInstance: vehicleInstance]
    }

    def update(Long id, Long version) {
        def vehicleInstance = Vehicle.get(id)
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
            def userDir = new File(webRootDir, "/images/payload/vehicle_pictures/"+
                    vehicleInstance.brand.vec_brand+'/'+vehicleInstance.model+"/")
            userDir.mkdirs()
            uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
            vehicleInstance.filename = uploadedFile.originalFilename
        }

        if (!vehicleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (vehicleInstance.version > version) {
                vehicleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'vehicle.label', default: 'Vehicle')] as Object[],
                        "Another user has updated this Vehicle while you were editing")
                render(view: "edit", model: [vehicleInstance: vehicleInstance])
                return
            }
        }

        vehicleInstance.properties = params

        if (!vehicleInstance.save(flush: true)) {
            render(view: "edit", model: [vehicleInstance: vehicleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), vehicleInstance.id])
        redirect(action: "show", id: vehicleInstance.id)
    }

    def delete(Long id) {
        def vehicleInstance = Vehicle.get(id)
        if (!vehicleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), id])
            redirect(action: "list")
            return
        }

        try {
            vehicleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'vehicle.label', default: 'Vehicle'), id])
            redirect(action: "show", id: id)
        }
    }
}
