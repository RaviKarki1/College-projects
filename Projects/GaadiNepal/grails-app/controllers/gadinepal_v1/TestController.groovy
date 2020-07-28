package gadinepal_v1

import grails.converters.JSON

class TestController {

    def index() {}

    def vehicle_api(){
        def vecList=Vehicle.list()
        render vecList as JSON
    }
}
