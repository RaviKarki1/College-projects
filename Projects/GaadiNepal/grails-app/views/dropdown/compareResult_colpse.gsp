<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>CompareResult</title>
    <meta name="layout" content="main">

    <!-- Bootstrap -->
    %{--<link href="web-app/css/bootstrap.min.css" rel="stylesheet">--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    %{--go to previous window--}%
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
    <style>
        body{
            width: 1100px;
            margin: 0 auto;
        }
        .panel-group,.btn,h1{
            margin: 15px;
        }
    </style>
</head>

<body>
        <button type="button" class="btn btn-secondary btn-sm" onclick="goBack()">Back</button>

        <g:if test ="${vec1List}&&${vec2List}">

        <div class="bs-example">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">CAR DETAILS</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <tr>
                                    <td><b>Picture</b></th>
                                    <td>
                                        <a href="${createLinkTo(dir: 'images/payload/vehicle_pictures/' + vec1List.brand.vec_brand + '/' + vec1List.model + '/',
                                                file: vec1List.filename, absolute: true)}" target="_new">
                                            <img src="${createLinkTo(dir: 'images/payload/vehicle_pictures/' +
                                                    vec1List.brand.vec_brand + '/' + vec1List.model + '/',
                                                    file: '' + vec1List.filename)}"
                                                 alt="${vec1List.filename}"
                                                 title="${vec1List.model}"
                                                 height="100" width="auto"/>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="${createLinkTo(dir: 'images/payload/vehicle_pictures/' + vec2List.brand.vec_brand + '/' + vec2List.model + '/',
                                                file: vec1List.filename, absolute: true)}" target="_new">
                                            <img src="${createLinkTo(dir: 'images/payload/vehicle_pictures/' +
                                                    vec2List.brand.vec_brand + '/' + vec2List.model + '/',
                                                    file: '' + vec2List.filename)}"
                                                 alt="${vec2List.filename}"
                                                 title="${vec2List.filename}"
                                                 height="100" width="auto"/>
                                        </a>
                                    </td>
                                    </tr>
                                <tr>
                                    <td><b>Model</td></b>
                                    <td>${vec1List.model}</td>
                                    <td>${vec2List.model}</td>
                                </tr>
                                <tr>
                                    <td><b>Brand</b></td>
                                    <td>${vec1List.brand}</td>
                                    <td>${vec2List.brand}</td>
                                </tr>
                                <tr>
                                    <td><b>Category</b></td>
                                    <td>${vec1List.category}</td>
                                    <td>${vec2List.category}</td>
                                </tr>
                                <tr>
                                    <td><b>Year</b></td>
                                    <td>${vec1List.year}</td>
                                    <td>${vec2List.year}</td>
                                </tr>
                                <tr>
                                    <td><b>Price</b></td>
                                    <td>${vec1List.price}</td>
                                    <td>${vec2List.price}</td>
                                </tr>
                                <tr>
                                    <td><b>Body Type</b></td>
                                    <td>${vec1List.body_type}</td>
                                    <td>${vec2List.body_type}</td>
                                </tr>
                                <tr>
                                    <td><b>Seats</b></td>
                                    <td>${vec1List.seats}</td>
                                    <td>${vec2List.seats}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">ENGINE SPECIFICATION</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <tr>
                                    <td><b>Engine Type</b></td>
                                    <td>${vec1List.engine_type}</td>
                                    <td>${vec2List.engine_type}</td>
                                </tr>
                                <tr>
                                    <td><b>Engine size</b></td>
                                    <td>${vec1List.engine_size}</td>
                                    <td>${vec2List.engine_size}</td>
                                </tr>
                                <tr>
                                    <td><b>Cylinders</b></td>
                                    <td>${vec1List.cylinders}</td>
                                    <td>${vec2List.cylinders}</td>
                                </tr>
                                <tr>
                                    <td><b>Max Torque</b></td>
                                    <td>${vec1List.max_torque}</td>
                                    <td>${vec2List.max_torque}</td>
                                </tr>
                                <tr>
                                    <td><b>Max Power</b></td>
                                    <td>${vec1List.max_power}</td>
                                    <td>${vec2List.max_power}</td>
                                </tr>
                                <tr>
                                    <td><b>Bore and Stroke</b></td>
                                    <td>${vec1List.bore_stroke}</td>
                                    <td>${vec2List.bore_stroke}</td>
                                </tr>
                                <tr>
                                    <td><b>Compression Ratio</b></td>
                                    <td>${vec1List.compression_ratio}</td>
                                    <td>${vec2List.compression_ratio}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">DRIVETERRAIN SPECIFICATION
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <tr>
                                    <td><b>Transmission</b></td>
                                    <td>${vec1List.transmission}</td>
                                    <td>${vec2List.transmission}</td>
                                </tr>
                                <tr>
                                    <td><b>Drive Type</b></td>
                                    <td>${vec1List.drive_type}</td>
                                    <td>${vec2List.drive_type}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">FUEL SPECIFICATION
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <tr>
                                    <td><b>Fuel Type</b></td>
                                    <td>${vec1List.fuel_type}</td>
                                    <td>${vec2List.fuel_type}</td>
                                </tr>
                                <tr>
                                    <td><b>Fuel Tank Capacity</b></td>
                                    <td>${vec1List.fuel_tank_capacity}</td>
                                    <td>${vec2List.fuel_tank_capacity}</td>
                                </tr>
                                <tr>
                                    <td><b>Fuel Consumption</b></td>
                                    <td>${vec1List.fuel_consumption}</td>
                                    <td>${vec2List.fuel_consumption}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">WEIGHT AND MEASURMENT
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <tr>
                                    <td><b>Kerb Weight</b></td>
                                    <td>${vec1List.kerb_weight}</td>
                                    <td>${vec2List.kerb_weight}</td>
                                </tr>
                                <tr>
                                    <td><b>Height</b></td>
                                    <td>${vec1List.height}</td>
                                    <td>${vec2List.height}</td>
                                </tr>
                                <tr>
                                     <td><b>Length</b></td>
                                    <td>${vec1List.length}</td>
                                    <td>${vec1List.length}</td>
                                </tr>
                                <tr>
                                    <td><b>Width</b></td>
                                    <td>${vec1List.width}</td>
                                    <td>${vec2List.width}</td>
                                </tr>
                                <tr>
                                    <td><b>Ground Clearance</b></td>
                                    <td>${vec1List.ground_clearance}</td>
                                    <td>${vec2List.ground_clearance}</td>
                                </tr>
                                <tr>
                                    <td><b>Towing Capacity</b></td>
                                    <td>${vec1List.towing_capacity}</td>
                                    <td>${vec2List.towing_capacity}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">STEERING AND SUSPENSION
                            </a>
                        </h4>
                    </div>
                    <div id="collapseSix" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <tr>
                                    <td><b>Steering Type</b></td>
                                    <td>${vec1List.steering_type}</td>
                                    <td>${vec2List.steering_type}</td>
                                </tr>
                                <tr>
                                    <td><b>Front Rim Size</b></td>
                                    <td>${vec1List.front_rim_size}</td>
                                    <td>${vec2List.front_rim_size}</td>
                                </tr>
                                <tr>
                                    <td><b>Rear Rim Size</b></td>
                                    <td>${vec1List.rear_rim_size}</td>
                                    <td>${vec2List.rear_rim_size}</td>
                                </tr>
                                <tr>
                                    <td><b>Front Tyre</b></td>
                                    <td>${vec1List.front_tyre}</td>
                                    <td>${vec2List.front_tyre}</td>
                                </tr>
                                <tr>
                                    <td><b>Rear Tyre</b></td>
                                    <td>${vec1List.rear_tyre}</td>
                                    <td>${vec2List.rear_tyre}</td>
                                </tr>
                                <tr>
                                    <td><b>Front Brake</b></td>
                                    <td>${vec1List.front_brake}</td>
                                    <td>${vec2List.front_brake}</td>
                                </tr>
                                <tr>
                                    <td><b>Rear Brake</b></td>
                                    <td>${vec1List.rear_brake}</td>
                                    <td>${vec2List.rear_brake}</td>
                                </tr>
                                <tr>
                                    <td><b>Front Suspension</b></td>
                                    <td>${vec1List.front_suspension}</td>
                                    <td>${vec2List.front_suspension}</td>
                                </tr>
                                <tr>
                                    <td><b>Rear Suspension</b></td>
                                    <td>${vec1List.rear_suspension}</td>
                                    <td>${vec2List.rear_suspension}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">STANDARD FEATURES
                            </a>
                        </h4>
                    </div>
                    <div id="collapseSeven" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <tr>
                                    <td><b>Comfort</b></td>
                                    <td>${vec1List.comfort}</td>
                                    <td>${vec2List.comfort}</td>
                                </tr>
                                <tr>
                                    <td><b>Control and Handling</b></td>
                                    <td>${vec1List.control_handling}</td>
                                    <td>${vec2List.control_handling}</td>
                                </tr>
                                <tr>
                                    <td><b>Driver</b></td>
                                    <td>${vec1List.driver}</td>
                                    <td>${vec2List.driver}</td>
                                </tr>
                                <tr>
                                    <td><b>Entertainment</b></td>
                                    <td>${vec1List.entertainment}</td>
                                    <td>${vec2List.entertainment}</td>
                                </tr>
                                <tr>
                                    <td><b>Safety</b></td>
                                    <td>${vec1List.safety}</td>
                                    <td>${vec2List.safety}</td>
                                </tr>
                                <tr>
                                    <td><b>Security</b></td>
                                    <td>${vec1List.security}</td>
                                    <td>${vec2List.security}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseEight">OTHERS
                            </a>
                        </h4>
                    </div>
                    <div id="collapseEight" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <tr>
                                    <td><b>Service Interval</b></td>
                                    <td>${vec1List.service_interval}</td>
                                    <td>${vec2List.service_interval}</td>
                                </tr>
                                <tr>
                                    <td><b>Warranty</b></td>
                                    <td>${vec1List.service_interval}</td>
                                    <td>${vec2List.service_interval}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            %{--<p><strong>Note:</strong> Click on the linked heading text to expand or collapse accordion panels.</p>--}%
        </div>

     </g:if>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
%{--<script src="js/bootstrap.min.js"></script>--}%
<g:javascript src="bootstrap.min.js" />
</body>
</html>