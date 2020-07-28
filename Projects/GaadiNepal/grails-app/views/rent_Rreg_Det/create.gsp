<%@ page import="gadinepal_v1.Rent_Rreg_Det" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rent_Rreg_Det.label', default: 'Rent_Rreg_Det')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-rent_Rreg_Det" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="home" controller="login" action="${session.user.role}"><g:message code="default.home.label"/></g:link></li>--}%
                %{--<li><g:link controller="login" action="logout">logout</g:link></li>--}%
				%{--<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="create-rent_Rreg_Det" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${rent_Rreg_DetInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${rent_Rreg_DetInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
<g:javascript>
function checkPhoneNumber(){
    var phno = document.getElementById("phone_num");
    console.log("phno: "+phno.value.length);
    if(phno.value.length<7 || phno.value.length>10 )
    {
        alert("enter a valid number.")
    }
}

    function checkDate()
    {
        var pck= document.getElementById("pickupDate").toString()
        var pd=Date.parse(pck)
        console.log(pl)

        var drp=document.getElementById("dropOffDate").toString()
        var  dd=Date.parse(drp)
        console.log(dl)
        if(dd<pd)
        {
            alert("drop off date must be later to pickup date")
        }
    }




//function echeck(str) {
//
//        var at="@"
//        var dot="."
//        var lat=str.indexOf(at)
//        var lstr=str.length
//        var ldot=str.indexOf(dot)
//        if (str.indexOf(at)==-1){
//        alert("Invalid E-mail ID")
//        return false
//        }
//
//        if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
//        alert("Invalid E-mail ID")
//        return false
//        }
//
//        if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
//        alert("Invalid E-mail ID")
//        return false
//        }
//
//        if (str.indexOf(at,(lat+1))!=-1){
//        alert("Invalid E-mail ID")
//        return false
//        }
//
//        if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
//        alert("Invalid E-mail ID")
//        return false
//        }
//
//        if (str.indexOf(dot,(lat+2))==-1){
//        alert("Invalid E-mail ID")
//        return false
//        }
//
//        if (str.indexOf(" ")!=-1){
//        alert("Invalid E-mail ID")
//        return false
//        }
//
//        return true
//        }

        function validateForm(){}

//function ValidateForm()
//{
//        var emailID=document.getElementById("email").value
//        console.log(emailID)
//
//        if ((emailID.value==null)||(emailID.value=="")){
//        alert("Please Enter your Email ID")
//        emailID.focus()
//        return false
//        }
//        if (echeck(emailID.value)==false){
//        emailID.value=""
//        emailID.focus()
//        return false
//        }
//        return true
//}
//
//
//




</g:javascript>
	</body>
</html>
