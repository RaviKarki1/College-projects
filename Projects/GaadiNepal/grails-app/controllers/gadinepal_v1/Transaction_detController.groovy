package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

class Transaction_detController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [transaction_detInstanceList: Transaction_det.list(params), transaction_detInstanceTotal: Transaction_det.count()]
    }

    def create() {
        [transaction_detInstance: new Transaction_det(params)]
    }

    def save() {
        def transaction_detInstance = new Transaction_det(params)
        if (!transaction_detInstance.save(flush: true)) {
            render(view: "create", model: [transaction_detInstance: transaction_detInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'transaction_det.label', default: 'Transaction_det'), transaction_detInstance.id])
        redirect(action: "show", id: transaction_detInstance.id)
    }

    def show(Long id) {
        def transaction_detInstance = Transaction_det.get(id)
        if (!transaction_detInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transaction_det.label', default: 'Transaction_det'), id])
            redirect(action: "list")
            return
        }

        [transaction_detInstance: transaction_detInstance]
    }

    def edit(Long id) {
        def transaction_detInstance = Transaction_det.get(id)
        if (!transaction_detInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transaction_det.label', default: 'Transaction_det'), id])
            redirect(action: "list")
            return
        }

        [transaction_detInstance: transaction_detInstance]
    }

    def update(Long id, Long version) {
        def transaction_detInstance = Transaction_det.get(id)
        if (!transaction_detInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transaction_det.label', default: 'Transaction_det'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (transaction_detInstance.version > version) {
                transaction_detInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'transaction_det.label', default: 'Transaction_det')] as Object[],
                          "Another user has updated this Transaction_det while you were editing")
                render(view: "edit", model: [transaction_detInstance: transaction_detInstance])
                return
            }
        }

        transaction_detInstance.properties = params

        if (!transaction_detInstance.save(flush: true)) {
            render(view: "edit", model: [transaction_detInstance: transaction_detInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'transaction_det.label', default: 'Transaction_det'), transaction_detInstance.id])
        redirect(action: "show", id: transaction_detInstance.id)
    }

    def delete(Long id) {
        def transaction_detInstance = Transaction_det.get(id)
        if (!transaction_detInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transaction_det.label', default: 'Transaction_det'), id])
            redirect(action: "list")
            return
        }

        try {
            transaction_detInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'transaction_det.label', default: 'Transaction_det'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'transaction_det.label', default: 'Transaction_det'), id])
            redirect(action: "show", id: id)
        }
    }
}
