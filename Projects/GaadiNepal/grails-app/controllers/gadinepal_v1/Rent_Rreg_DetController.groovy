package gadinepal_v1

import org.springframework.dao.DataIntegrityViolationException

import java.text.SimpleDateFormat

class Rent_Rreg_DetController extends BaseController  {

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
        [rent_Rreg_DetInstanceList: Rent_Rreg_Det.list(params), rent_Rreg_DetInstanceTotal: Rent_Rreg_Det.count()]
    }

    def create() {
        //println params
        [rent_Rreg_DetInstance: new Rent_Rreg_Det(params),rental_id:params.id]
    }

    def save() {
        def rent_Rreg_DetInstance = new Rent_Rreg_Det(params)
        if (!rent_Rreg_DetInstance.save(flush: true)) {
            render(view: "create", model: [rent_Rreg_DetInstance: rent_Rreg_DetInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det'), rent_Rreg_DetInstance.id])
        redirect(action: "show", id: rent_Rreg_DetInstance.id)
    }

    def show(Long id) {
        def rent_Rreg_DetInstance = Rent_Rreg_Det.get(id)
        if (!rent_Rreg_DetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det'), id])
            redirect(action: "list")
            return
        }

        [rent_Rreg_DetInstance: rent_Rreg_DetInstance]
    }

    def edit(Long id) {
        def rent_Rreg_DetInstance = Rent_Rreg_Det.get(id)
        if (!rent_Rreg_DetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det'), id])
            redirect(action: "list")
            return
        }

        [rent_Rreg_DetInstance: rent_Rreg_DetInstance]
    }

    def update(Long id, Long version) {
        def rent_Rreg_DetInstance = Rent_Rreg_Det.get(id)
        if (!rent_Rreg_DetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (rent_Rreg_DetInstance.version > version) {
                rent_Rreg_DetInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det')] as Object[],
                          "Another user has updated this Rent_Rreg_Det while you were editing")
                render(view: "edit", model: [rent_Rreg_DetInstance: rent_Rreg_DetInstance])
                return
            }
        }

        rent_Rreg_DetInstance.properties = params

        if (!rent_Rreg_DetInstance.save(flush: true)) {
            render(view: "edit", model: [rent_Rreg_DetInstance: rent_Rreg_DetInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det'), rent_Rreg_DetInstance.id])
        redirect(action: "show", id: rent_Rreg_DetInstance.id)
    }

    def delete(Long id) {
        def rent_Rreg_DetInstance = Rent_Rreg_Det.get(id)
        if (!rent_Rreg_DetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det'), id])
            redirect(action: "list")
            return
        }

        try {
            rent_Rreg_DetInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det'), id])
            redirect(action: "show", id: id)
        }
    }


    def rentalSpecificList(Integer id)
    {
        session.rental_id=id
        def rentalList=Rental.findAllById(id)
        [rentalInstanceList: rentalList]
    }

    def sendEmail_acpt() {
      print "###############"+params.email
        print "###############"+params.rental_id
        print "###############"+params.drop_off_date
        def email=params.email;
        def rental_acpt=new Rental_acpt()
        rental_acpt.name =params.name;
        rental_acpt.address=params.address;
        rental_acpt.phone_num=Integer.parseInt(params.phone_num);
        rental_acpt.email_id=params.email
        rental_acpt.pick_up_date=parseDate(params.pick_up_date);
        rental_acpt.drop_off_date=parseDate(params.drop_off_date);
        rental_acpt.rental_id=params.rental_id;
        if(rental_acpt.save(failOnError: true)){

            println("Rental session "+session.rental_id);
            /*Rental.executeQuery("UPDATE table_name\n" +
                    "SET column1 = value1, column2 = value2, ...\n" +
                    "WHERE condition;")*/

            Rental.executeUpdate("update Rental set status=true where id="+session.rental_id)
            println("updated");
        }




//        new Rental_acpt(name:params.name,address:params.address,phone_num:params.phone_num,email_id:params.email_id,pick_up_date:params.pick_up_date,drop_off_date:params.drop_off_date,rental_id:params.rental_id).save()

        if( sendMail {
            to "${email}"
            subject "Rental::GaadiNepal"
            body "Your Rental Request Has been accepted"
        }
        )
           // redirect(action: "sendEmail_acpt")
            render(view: "ret_aft_mail",)


        return

    }

    Date parseDate(def date) {
        Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(date)
        return date1;
    }

    def sendEmail_rjt() {
//        print "###############"+params.email
        def email=params.email;

        if( sendMail {
            to "${email}"
            subject "Rental::GaadiNepal"
            body "Sorry, the vehicle is not available"
        }
        ) render "mail sent to ${email}"
    }
}
