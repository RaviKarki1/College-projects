
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>CompareResult</title>
    <meta name="layout" content="main">

</head>

<body>
<g:if test ="${vec1List}&&${vec2List}">
<table>
        <tr><th colspan="3">CAR DETAILS</th></tr>
        <tr>
            <td width="200px"><ol style="list-style: none">
                <li style="line-height: 670%"><b>Picture</b></li>
                <li><b>Model</b></li>
                <li><b>Brand</b></li>
                <li><b>Category</b></li>
                <li><b>Year</b></li>
                <li><b>Price</b></li>
                <li><b>Body Type</b></li>
                <li><b>Seats</b></li>
            </ol></td>

            <td><ol style="list-style: none">
                <li>
                    <a href="${createLinkTo(dir: 'images/payload/vehicle_pictures/' + vec1List.brand.vec_brand + '/' + vec1List.model + '/',
                            file: vec1List.filename, absolute: true)}" target="_new">
                        <img src="${createLinkTo(dir: 'images/payload/vehicle_pictures/' +
                                vec1List.brand.vec_brand + '/' + vec1List.model + '/',
                                file: '' + vec1List.filename)}"
                             alt="${vec1List.filename}"
                             title="${vec1List.filename}"
                             height="100" width="auto"/>
                    </a>
                </li>

                <li><b>${vec1List.model}</b></li>
                <li>${vec1List.brand.vec_brand}</li>
                <li>${vec1List.category.vec_category}</li>
                <li>${vec1List.year}</li>
                <li>${vec1List.price}</li>
                <li>${vec1List.body_type}</li>
                <li>${vec1List.seats}</li>
            </ol></td>

            <td><ol style="list-style: none">
                <li>
                    <a href="${createLinkTo(dir: 'images/payload/vehicle_pictures/' + vec2List.brand.vec_brand + '/' + vec2List.model + '/',
                            file: vec1List.filename, absolute: true)}" target="_new">
                        <img src="${createLinkTo(dir: 'images/payload/vehicle_pictures/' +
                                vec2List.brand.vec_brand + '/' + vec2List.model + '/',
                                file: '' + vec2List.filename)}"
                             alt="${vec2List.filename}"
                             title="${vec2List.filename}"
                             height="100" width="auto"/>
                    </a>
                </li>
                <li><b>${vec2List.model}</b></li>
                <li>${vec2List.brand.vec_brand}</li>
                <li>${vec2List.category.vec_category}</li>
                <li>${vec2List.year}</li>
                <li>${vec2List.price}</li>
                <li>${vec2List.body_type}</li>
                <li>${vec2List.seats}</li>
            </ol></td>
        </tr>
        <tr><th colspan="3">ENGINE SPECS</th></tr>
        <tr>
            <td>
                <ol style="list-style: none">
                    <li><b>Engine Type</b></li>
                    <li><b>Engine size</b></li>
                    <li><b>Cylinders</b></li>
                    <li><b>Max Torque</b></li>
                    <li><b>Max Power</b></li>
                    <li><b>Bore and Stroke</b></li>
                    <li><b>Compression Ratio</b></li>
                </ol>
            </td>
            <td><ol style="list-style: none">
                <li>${vec1List.engine_type}</li>
                <li>${vec1List.engine_size}</li>
                <li>${vec1List.cylinders}</li>
                <li>${vec1List.max_torque}</li>
                <li>${vec1List.max_power}</li>
                <li>${vec1List.bore_stroke}</li>
                <li>${vec1List.compression_ratio}</li>
            </ol></td>

            <td><ol style="list-style: none">
                <li>${vec2List.engine_type}</li>
                <li>${vec2List.engine_size}</li>
                <li>${vec2List.cylinders}</li>
                <li>${vec2List.max_torque}</li>
                <li>${vec2List.max_power}</li>
                <li>${vec2List.bore_stroke}</li>
                <li>${vec2List.compression_ratio}</li>
            </ol></td>
        </tr>
        <tr><th colspan="3">DRIVETERRAIN SPECIFICATION</th></tr>
        <tr>
            <td>
                <ol style="list-style: none">
                    <li><b>Transmission</b></li>
                    <li><b>Drive Type</b></li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec1List.transmission}</li>
                    <li>${vec1List.drive_type}</li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec2List.transmission}</li>
                    <li>${vec2List.drive_type}</li>
                </ol>
            </td>
        </tr>
        <tr><th colspan="3">FUEL SPECIFICATION</th></tr>
        <tr>
            <td>
                <ol style="list-style: none">
                    <li><b>Fuel Type</b></li>
                    <li><b>Fuel Tank Capacity</b></li>
                    <li><b>Fuel Consumption</b></li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec1List.fuel_type}</li>
                    <li>${vec1List.fuel_tank_capacity}</li>
                    <li>${vec1List.fuel_consumption}</li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec2List.fuel_type}</li>
                    <li>${vec2List.fuel_tank_capacity}</li>
                    <li>${vec2List.fuel_consumption}</li>
                </ol>
            </td>
        </tr>
        <tr><th colspan="3">WEIGHT AND MEASURMENT</th></tr>
        <tr>
            <td>
                <ol style="list-style: none">
                    <li><b>Kerb Weight</b></li>
                    <li><b>Height</b></li>
                    <li><b>Length</b></li>
                    <li><b>Width</b></li>
                    <li><b>Ground Clearance</b></li>
                    <li><b>Towing Capacity</b></li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec1List.kerb_weight}</li>
                    <li>${vec1List.height}</li>
                    <li>${vec1List.length}</li>
                    <li>${vec1List.width}</li>
                    <li>${vec1List.ground_clearance}</li>
                    <li>${vec1List.towing_capacity}</li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec2List.kerb_weight}</li>
                    <li>${vec2List.height}</li>
                    <li>${vec2List.length}</li>
                    <li>${vec2List.width}</li>
                    <li>${vec2List.ground_clearance}</li>
                    <li>${vec2List.towing_capacity}</li>
                </ol>
            </td>
        </tr>
        <tr><th colspan="3">STEERING AND SUSPENSION</th></tr>
        <tr>
            <td>
                <ol style="list-style: none">
                    <li><b>Steering Type</b></li>
                    <li><b>Front Rim Size</b></li>
                    <li><b>Rear Rim Size</b></li>
                    <li><b>Front Tyre</b></li>
                    <li><b>Rear Tyre</b></li>
                    <li><b>Front Brake</b></li>
                    <li><b>Rear Brake</b></li>
                    <li><b>Front Suspension</b></li>
                    <li><b>Rear Suspension</b></li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec1List.steering_type}</li>
                    <li>${vec1List.front_rim_size}</li>
                    <li>${vec1List.rear_rim_size}</li>
                    <li>${vec1List.front_tyre}</li>
                    <li>${vec1List.rear_tyre}</li>
                    <li>${vec1List.front_brake}</li>
                    <li>${vec1List.rear_brake}</li>
                    <li>${vec1List.front_suspension}</li>
                    <li>${vec1List.rear_suspension}</li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec2List.steering_type}</li>
                    <li>${vec2List.front_rim_size}</li>
                    <li>${vec2List.rear_rim_size}</li>
                    <li>${vec2List.front_tyre}</li>
                    <li>${vec2List.rear_tyre}</li>
                    <li>${vec2List.front_brake}</li>
                    <li>${vec2List.rear_brake}</li>
                    <li>${vec2List.front_suspension}</li>
                    <li>${vec2List.rear_suspension}</li>
                </ol>
            </td>
        </tr>
        <tr><th colspan="3">STANDARD FEATURES</th></tr>
        <tr>
            <td>
                <ol style="list-style: none">
                    <li><b>Comfort</b></li>
                    <li><b>Control and Handling</b></li>
                    <li><b>Driver</b></li>
                    <li><b>Entertainment</b></li>
                    <li><b>Safety</b></li>
                    <li><b>Security</b></li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec1List.comfort}</li>
                    <li>${vec1List.control_handling}</li>
                    <li>${vec1List.driver}</li>
                    <li>${vec1List.entertainment}</li>
                    <li>${vec1List.safety}</li>
                    <li>${vec1List.security}</li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec2List.comfort}</li>
                    <li>${vec2List.control_handling}</li>
                    <li>${vec2List.driver}</li>
                    <li>${vec2List.entertainment}</li>
                    <li>${vec2List.safety}</li>
                    <li>${vec2List.security}</li>
                </ol>
            </td>
        </tr>
        <tr><th colspan="3">OTHER</th></tr>
        <tr>
            <td>
                <ol style="list-style: none">
                    <li><b>Service Interval</b></li>
                    <li><b>Warranty</b></li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec1List.service_interval}</li>
                    <li>${vec1List.warranty}</li>
                </ol>
            </td>
            <td>
                <ol style="list-style: none">
                    <li>${vec2List.service_interval}</li>
                    <li>${vec2List.warranty}</li>
                </ol>
            </td>
        </tr>
    </table>

</g:if>

</body>
</html>