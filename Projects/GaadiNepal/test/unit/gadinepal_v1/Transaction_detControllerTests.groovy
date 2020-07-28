package gadinepal_v1



import org.junit.*
import grails.test.mixin.*

@TestFor(Transaction_detController)
@Mock(Transaction_det)
class Transaction_detControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/transaction_det/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.transaction_detInstanceList.size() == 0
        assert model.transaction_detInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.transaction_detInstance != null
    }

    void testSave() {
        controller.save()

        assert model.transaction_detInstance != null
        assert view == '/transaction_det/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/transaction_det/show/1'
        assert controller.flash.message != null
        assert Transaction_det.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/transaction_det/list'

        populateValidParams(params)
        def transaction_det = new Transaction_det(params)

        assert transaction_det.save() != null

        params.id = transaction_det.id

        def model = controller.show()

        assert model.transaction_detInstance == transaction_det
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/transaction_det/list'

        populateValidParams(params)
        def transaction_det = new Transaction_det(params)

        assert transaction_det.save() != null

        params.id = transaction_det.id

        def model = controller.edit()

        assert model.transaction_detInstance == transaction_det
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/transaction_det/list'

        response.reset()

        populateValidParams(params)
        def transaction_det = new Transaction_det(params)

        assert transaction_det.save() != null

        // test invalid parameters in update
        params.id = transaction_det.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/transaction_det/edit"
        assert model.transaction_detInstance != null

        transaction_det.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/transaction_det/show/$transaction_det.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        transaction_det.clearErrors()

        populateValidParams(params)
        params.id = transaction_det.id
        params.version = -1
        controller.update()

        assert view == "/transaction_det/edit"
        assert model.transaction_detInstance != null
        assert model.transaction_detInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/transaction_det/list'

        response.reset()

        populateValidParams(params)
        def transaction_det = new Transaction_det(params)

        assert transaction_det.save() != null
        assert Transaction_det.count() == 1

        params.id = transaction_det.id

        controller.delete()

        assert Transaction_det.count() == 0
        assert Transaction_det.get(transaction_det.id) == null
        assert response.redirectedUrl == '/transaction_det/list'
    }
}
