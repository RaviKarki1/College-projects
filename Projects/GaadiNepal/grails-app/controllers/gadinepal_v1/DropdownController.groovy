package gadinepal_v1

class DropdownController {

    def index() {}
    def brand1Changed(long brandId) {
        def brand = Brand.get(brandId)
        def vecName = []
        if ( brand != null ) {
            vecName = Vehicle.findAllByBrand(brand, [order:'name'])
        }
        render g.select(id:'vehicle1', name:'vehicle.id',
                from:vecName, optionKey:'id', noSelection:['':'-select- '],required: ""
        )
    }
    def brand2Changed(long brandId) {
        def brand = Brand.get(brandId)
        def vecName = []
        if ( brand != null ) {
            vecName = Vehicle.findAllByBrand(brand, [order:'name'])
        }
        render g.select(id:'vehicle2', name:'vehicle.id',
                from:vecName, optionKey:'id', noSelection:['':'-select- '],required: ""
        )
    }

//    def compareResult(){
    def compareResult_colpse(){
//        printf "@@##############BRAND ID1::####"+params.brand.id[0]
//        printf "##############VEHICLE ID1::###"+params.vehicle.id[0]
//
//        printf "@@##############BRAND ID2::####"+params.brand.id[1]
//        printf "##############VEHICLE ID2::###"+params.vehicle.id[1]

        def vec1=Vehicle.findById(params.vehicle.id[0])
        def vec2=Vehicle.findById(params.vehicle.id[1])

        if(vec1==null){
            flash.message="select brand and vehicle"
            redirect(action: multilevel_dropdown())
        }
        [vec1List:vec1,vec2List:vec2]
    }

}
