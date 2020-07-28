package gadinepal_v1

import grails.plugin.databasemigration.ScriptUtils

class Vehicle {
    static belongsTo = [Brand,Category]
    public String toString() {
        return model    }

    //CAR DETAILS
    String model
    Brand brand
    Category category
    String description
    String year
    String body_type
    String seats
    //PRICING
    String price
    //ENGINE SPECS
    String engine_type
    String engine_size
    String cylinders
    String max_torque
    String max_power
    String bore_stroke
    String compression_ratio
    //DRIVETERRAIN SPECS
    String transmission
    String drive_type
    //FUEL SPECS
    String fuel_type
    String fuel_tank_capacity
    String fuel_consumption
    //WEIGHT AND MEASURMENT
    String kerb_weight
    String height
    String length
    String width
    String ground_clearance
    String towing_capacity
    //STEERING AND SUSPENSION
    String steering_type
    String front_rim_size
    String rear_rim_size
    String front_tyre
    String rear_tyre
    String wheel_base
    String front_brake
    String rear_brake
    String front_suspension
    String rear_suspension
    //STANDARD FEATURES
    String comfort
    String control_handling
    String driver
    String entertainment
    String safety
    String security
    //OTHER
    String service_interval
    String warranty

    String filename


    static constraints = {
        //CAR DETAILS
        model()
        brand()
        category()
        description()
        year()
        body_type()
        seats()
        //PRICING
        price()
        //ENGINE SPECS
        engine_type()
        engine_size()
        cylinders()
        max_torque()
        max_power()
        bore_stroke()
        compression_ratio()
        //DRIVETERRAIN SPECS
        transmission()
        drive_type()
        //FUEL SPECS
        fuel_type()
        fuel_tank_capacity()
        fuel_consumption()
        //WEIGHT AND MEASURMENT
        kerb_weight()
        height()
        length()
        width()
        ground_clearance()
        towing_capacity()
        //STEERING AND SUSPENSION
        steering_type()
        front_rim_size()
        rear_rim_size()
        front_tyre()
        rear_tyre()
        wheel_base()
        front_brake()
        rear_brake()
        front_suspension()
        rear_suspension()
        //STANDARD FEATURES
        comfort()
        control_handling()
        driver()
        entertainment()
        safety()
        security()
        //OTHER
        service_interval()
        warranty()
    }
}
