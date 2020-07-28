package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

class Sales_regController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [sales_regInstanceList: Sales_reg.list(params), sales_regInstanceTotal: Sales_reg.count()]
    }

    def buy_req_list(Integer id)
    {
        def salesList=Sales.findAllById(id)
        [sales_regInstanceList: salesList]
    }


    def create() {
         println "CREATE   "+params.id
//        [sales_regInstance: new Sales_reg(params)]
        [sales_regInstance: new Sales_reg(params),id:params.id]




    }

    def save() {
        println" params is:"+ params
        def sales_regInstance = new Sales_reg(params)
        //sales_regInstance.sales.id=session.sales.id
        if (!sales_regInstance.save(flush: true)) {
            render(view: "create", model: [sales_regInstance: sales_regInstance])
            return
        }
        Sales.executeUpdate("update Sales set status=true where id="+params.sales.id)
        println"session.sales_id "+params.sales.id

        flash.message = message(code: 'default.created.message', args: [message(code: 'sales_reg.label', default: 'Sales_reg'), sales_regInstance.id])
        redirect(action: "show", id: sales_regInstance.id)
    }

    def show(Long id) {
        def sales_regInstance = Sales_reg.get(id)
        if (!sales_regInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales_reg.label', default: 'Sales_reg'), id])
            redirect(action: "list")
            return
        }

        [sales_regInstance: sales_regInstance]
    }

    def edit(Long id) {
        def sales_regInstance = Sales_reg.get(id)
        if (!sales_regInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales_reg.label', default: 'Sales_reg'), id])
            redirect(action: "list")
            return
        }

        [sales_regInstance: sales_regInstance]
    }

    def update(Long id, Long version) {
        def sales_regInstance = Sales_reg.get(id)
        if (!sales_regInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales_reg.label', default: 'Sales_reg'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (sales_regInstance.version > version) {
                sales_regInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'sales_reg.label', default: 'Sales_reg')] as Object[],
                          "Another user has updated this Sales_reg while you were editing")
                render(view: "edit", model: [sales_regInstance: sales_regInstance])
                return
            }
        }

        sales_regInstance.properties = params

        if (!sales_regInstance.save(flush: true)) {
            render(view: "edit", model: [sales_regInstance: sales_regInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'sales_reg.label', default: 'Sales_reg'), sales_regInstance.id])
        redirect(action: "show", id: sales_regInstance.id)
    }

    def delete(Long id) {
        def sales_regInstance = Sales_reg.get(id)
        if (!sales_regInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sales_reg.label', default: 'Sales_reg'), id])
            redirect(action: "list")
            return
        }

        try {
            sales_regInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sales_reg.label', default: 'Sales_reg'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sales_reg.label', default: 'Sales_reg'), id])
            redirect(action: "show", id: id)
        }
    }

    def sendEmail()
    {
        def email=params.email;
        def s_id=params.sales_id
        println"#########"+s_id
        if( sendMail {
            to "${email}"
            subject "Buying of vehicle::GaadiNepal"
            body "we want to discuss further about the buying of the vehicle  that you had registered for "
        }
        )
            Sales.executeUpdate("update Sales set status=true where id="+session.sales_id)
        //redirect(controller: "login" , action: ${session.user.role})
            //render(view: "ret_aft_mail",)
        redirect(controller: "login", action: "${session.user.role}")
    }
}
