package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

class Rental_acptController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [rental_acptInstanceList: Rental_acpt.list(params), rental_acptInstanceTotal: Rental_acpt.count()]
    }

    def create() {
        [rental_acptInstance: new Rental_acpt(params)]
    }

    def save() {
        def rental_acptInstance = new Rental_acpt(params)
        if (!rental_acptInstance.save(flush: true)) {
            render(view: "create", model: [rental_acptInstance: rental_acptInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'rental_acpt.label', default: 'Rental_acpt'), rental_acptInstance.id])
        redirect(action: "show", id: rental_acptInstance.id)
    }

    def show(Long id) {
        def rental_acptInstance = Rental_acpt.get(id)
        if (!rental_acptInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rental_acpt.label', default: 'Rental_acpt'), id])
            redirect(action: "list")
            return
        }

        [rental_acptInstance: rental_acptInstance]
    }

    def edit(Long id) {
        def rental_acptInstance = Rental_acpt.get(id)
        if (!rental_acptInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rental_acpt.label', default: 'Rental_acpt'), id])
            redirect(action: "list")
            return
        }

        [rental_acptInstance: rental_acptInstance]
    }

    def update(Long id, Long version) {
        def rental_acptInstance = Rental_acpt.get(id)
        if (!rental_acptInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rental_acpt.label', default: 'Rental_acpt'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (rental_acptInstance.version > version) {
                rental_acptInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'rental_acpt.label', default: 'Rental_acpt')] as Object[],
                        "Another user has updated this Rental_acpt while you were editing")
                render(view: "edit", model: [rental_acptInstance: rental_acptInstance])
                return
            }
        }

        rental_acptInstance.properties = params

        if (!rental_acptInstance.save(flush: true)) {
            render(view: "edit", model: [rental_acptInstance: rental_acptInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'rental_acpt.label', default: 'Rental_acpt'), rental_acptInstance.id])
        redirect(action: "show", id: rental_acptInstance.id)
    }

    def delete(Long id) {
        def rental_acptInstance = Rental_acpt.get(id)
        if (!rental_acptInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rental_acpt.label', default: 'Rental_acpt'), id])
            redirect(action: "list")
            return
        }

        try {
            rental_acptInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'rental_acpt.label', default: 'Rental_acpt'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'rental_acpt.label', default: 'Rental_acpt'), id])
            redirect(action: "show", id: id)
        }
    }
}
