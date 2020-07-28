package gadinepal_v1


import org.junit.*
import grails.test.mixin.*

@TestFor(Rental_acptController)
@Mock(Rental_acpt)
class Rental_acptControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/rental_acpt/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.rental_acptInstanceList.size() == 0
        assert model.rental_acptInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.rental_acptInstance != null
    }

    void testSave() {
        controller.save()

        assert model.rental_acptInstance != null
        assert view == '/rental_acpt/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/rental_acpt/show/1'
        assert controller.flash.message != null
        assert Rental_acpt.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/rental_acpt/list'

        populateValidParams(params)
        def rental_acpt = new Rental_acpt(params)

        assert rental_acpt.save() != null

        params.id = rental_acpt.id

        def model = controller.show()

        assert model.rental_acptInstance == rental_acpt
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/rental_acpt/list'

        populateValidParams(params)
        def rental_acpt = new Rental_acpt(params)

        assert rental_acpt.save() != null

        params.id = rental_acpt.id

        def model = controller.edit()

        assert model.rental_acptInstance == rental_acpt
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/rental_acpt/list'

        response.reset()

        populateValidParams(params)
        def rental_acpt = new Rental_acpt(params)

        assert rental_acpt.save() != null

        // test invalid parameters in update
        params.id = rental_acpt.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/rental_acpt/edit"
        assert model.rental_acptInstance != null

        rental_acpt.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/rental_acpt/show/$rental_acpt.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        rental_acpt.clearErrors()

        populateValidParams(params)
        params.id = rental_acpt.id
        params.version = -1
        controller.update()

        assert view == "/rental_acpt/edit"
        assert model.rental_acptInstance != null
        assert model.rental_acptInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/rental_acpt/list'

        response.reset()

        populateValidParams(params)
        def rental_acpt = new Rental_acpt(params)

        assert rental_acpt.save() != null
        assert Rental_acpt.count() == 1

        params.id = rental_acpt.id

        controller.delete()

        assert Rental_acpt.count() == 0
        assert Rental_acpt.get(rental_acpt.id) == null
        assert response.redirectedUrl == '/rental_acpt/list'
    }
}
