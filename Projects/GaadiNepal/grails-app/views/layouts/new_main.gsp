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
		%{--<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">--}%
		%{--<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">--}%
		%{--<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">--}%
		%{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">--}%
		%{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">--}%




        <!-- Bootstrap -->
        %{--<link href="web-app/css/bootstrap.min.css" rel="stylesheet">--}%
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">



        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
		<g:layoutHead/>
		<r:layoutResources />
    <style>
        .container{
            padding: 10px;
        }
        .footer{
            padding: 30px;
            background-color: #222;
        }
        nav{
            width: 1100px;
            margin: 0 auto;
        }

    </style>
	</head>
	<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img height="55" width="auto" src="${resource(dir: 'images', file: 'logo tuchha.PNG')}" alt=""/>
                </a>
                %{--<a class="navbar-brand" href="#">GaadiNepal</a>--}%
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>

                    <g:if test="${!session.user}">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Auction <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Create</a></li>
                                    <li><a href="#">Bid</a></li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Rental <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Place</a></li>
                                    <li><a href="#">Hire</a></li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sales <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Place</a></li>
                                    <li><a href="#">Buy</a></li>
                                </ul>
                            </li>
                    </g:if>
                </ul>


                %{--<form class="navbar-form navbar-left">--}%
                    %{--<div class="form-group">--}%
                        %{--<input type="text" class="form-control" placeholder="Search">--}%
                    %{--</div>--}%
                    %{--<button type="submit" class="btn btn-default">Submit</button>--}%
                %{--</form>--}%

                <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Signup</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    %{--<script src="js/bootstrap.min.js"></script>--}%
    <g:javascript src="bootstrap.min.js" />

    <g:layoutBody/>



		<div class="footer"></div>
		%{--<div class="footer" role="contentinfo"></div>--}%
		%{--<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>--}%
		%{--<g:javascript library="application"/>--}%
		<r:layoutResources />
	</body>
</html>
