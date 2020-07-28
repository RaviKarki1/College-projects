<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon_n.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">


        <style>
        .container {
            overflow: hidden;
            background-color: #333;
            font-family: Arial;
        }

        .container a {
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            border-radius: 0.3em ;
        }

        .dropdown {
            float: left;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: #666666;
            padding: 4px 7px;
            background-color: inherit;
            border-radius: 0.3em;
            background-position:0.7em center;
        }

        .container a:hover, .dropdown:hover .dropbtn {
            background-color: gray;
            color: white;

        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 6px -1px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #aaaaaa;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
        </style>

    <g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
    <div id="grailsLogo" role="banner"><img height="75" width="350" src="${resource(dir: 'images', file: 'logo tuchha.PNG')}" alt=""/></div>

    <div class="nav" role="navigation">
        <ul>
            <g:if test="${session.user}">
                <li><g:link controller="login" action="${session.user.role}" class="home"> <g:message code="default.home.label"/></g:link></li>

                <g:if test="${session.user.role=='admin'}">
                    <li>
                        <div class="dropdown">
                            <button class="dropbtn">User</button>
                            <div class="dropdown-content">
                                <g:link controller="user" action="create">Add User</g:link>
                                <g:link controller="user" action="list">User List</g:link>
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="dropdown">
                            <button class="dropbtn">Vehicle</button>
                            <div class="dropdown-content">
                                <g:link controller="brand" action="create">Add Brand</g:link>
                                <g:link controller="brand" action="list">Brand List</g:link>
                                <g:link controller="category" action="create">Add Category</g:link>
                                <g:link controller="category" action="list">Category List</g:link>
                                <g:link controller="vehicle" action="create">Add Vehicle</g:link>
                                <g:link controller="vehicle" action="list">Vehicle List</g:link>
                            </div>
                        </div>
                    </li>
                </g:if>

                <li>
                    <div class="dropdown">
                        <button class="dropbtn">Auction</button>
                        <div class="dropdown-content">
                            <g:if test="${session.user.role=='admin'}">
                                <g:link controller="auction" action="place_auction">Add Auction</g:link>
                                <g:link controller="auction" action="list">Auction List</g:link>
                                <g:link controller="auction" action="winner_list">Winner List</g:link>
                            </g:if>
                            <g:else>
                                <g:link controller="auction" action="show_auction">List Available</g:link>
                                <g:link controller="auction" action="upcoming_auction">Upcoming</g:link>
                            </g:else>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="dropdown">
                        <button class="dropbtn">Rental</button>
                        <div class="dropdown-content">
                            <g:if test="${session.user.role=='admin'}">
                                <g:link controller="rental" action="place_rental">Add Rental</g:link>
                                %{--<g:link controller="rental" action="list">Rental List</g:link>--}%
                                <g:link controller="rental" action="list">For Rent</g:link>
                                <g:link controller="rental" action="admin_list">In Market</g:link>
                            </g:if>
                            <g:else>
                                <g:link controller="rental" action="view_rental">List Available</g:link>
                            </g:else>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="dropdown">
                        <button class="dropbtn">Sales</button>
                        <div class="dropdown-content">
                            <div class="dropdown-content">
                                <g:if test="${session.user.role=='admin'}">
                                    <g:link controller="sales" action="add_for_sales">Add Sales</g:link>
                                    <g:link controller="sales" action="list">Sales List</g:link>
                                </g:if>
                                <g:else>
                                    <g:link controller="sales" action="cus_list">View Available</g:link>
                                </g:else>
                            </div>
                        </div>
                    </div>
                </li>

                <li>
                    <g:link controller="login" action="ourTeam">Our Team</g:link>
                </li>

                <li>
                    <g:link controller="login" action="aboutUs">About Us</g:link>
                </li>

                <li>
                    <g:link controller="login" action="logout">Logout</g:link>
                </li>
            </g:if>
            <g:else>
                <ul>
                    <li>
                        <g:link controller="login" action="customer" class="home">
                            <g:message code="default.home.label"/>
                        </g:link>
                    </li>

                    <li>
                        <g:link controller="login" action="signin" class="">Login</g:link>
                    </li>
                    <li>
                        <g:link controller="login" action="signup" class="">Signup</g:link>
                    </li>

                    <li>
                        <g:link controller="login" action="ourTeam">Our Team</g:link>
                    </li>

                    <li>
                        <g:link controller="login" action="aboutUs">About Us</g:link>
                    </li>

                </ul>
            </g:else>
        </ul>
    </div>

    <g:layoutBody/>

    <p align="center" style="margin-top: 50px">Copyright &copy 2017 GaadiNepal</p>
    <div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
