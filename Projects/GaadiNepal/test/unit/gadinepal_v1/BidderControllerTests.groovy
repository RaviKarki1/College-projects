package gadinepal_v1



import org.junit.*
import grails.test.mixin.*

@TestFor(BidderController)
@Mock(Bidder)
class BidderControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/bidder/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.bidderInstanceList.size() == 0
        assert model.bidderInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.bidderInstance != null
    }

    void testSave() {
        controller.save()

        assert model.bidderInstance != null
        assert view == '/bidder/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/bidder/show/1'
        assert controller.flash.message != null
        assert Bidder.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/bidder/list'

        populateValidParams(params)
        def bidder = new Bidder(params)

        assert bidder.save() != null

        params.id = bidder.id

        def model = controller.show()

        assert model.bidderInstance == bidder
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/bidder/list'

        populateValidParams(params)
        def bidder = new Bidder(params)

        assert bidder.save() != null

        params.id = bidder.id

        def model = controller.edit()

        assert model.bidderInstance == bidder
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/bidder/list'

        response.reset()

        populateValidParams(params)
        def bidder = new Bidder(params)

        assert bidder.save() != null

        // test invalid parameters in update
        params.id = bidder.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/bidder/edit"
        assert model.bidderInstance != null

        bidder.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/bidder/show/$bidder.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        bidder.clearErrors()

        populateValidParams(params)
        params.id = bidder.id
        params.version = -1
        controller.update()

        assert view == "/bidder/edit"
        assert model.bidderInstance != null
        assert model.bidderInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/bidder/list'

        response.reset()

        populateValidParams(params)
        def bidder = new Bidder(params)

        assert bidder.save() != null
        assert Bidder.count() == 1

        params.id = bidder.id

        controller.delete()

        assert Bidder.count() == 0
        assert Bidder.get(bidder.id) == null
        assert response.redirectedUrl == '/bidder/list'
    }
}
