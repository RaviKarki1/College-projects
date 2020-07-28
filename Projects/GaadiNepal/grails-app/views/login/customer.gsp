<%@ page import="gadinepal_v1.Brand" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>customer</title>
    <meta name="layout" content="main">
    <g:javascript library='jquery' />

    <script>
        function brand1Changed(brandId) {
            <g:remoteFunction controller="dropdown" action="brand1Changed"
                    update="subContainer1"
                    params="'brandId='+brandId"/>
//        jQuery.ajax({type:'POST',data:'categoryId='+categoryId, url:'/compare/dropdowm/categoryChanged',success:function(data,textStatus){jQuery('#subContainer').html(data);},error:function(XMLHttpRequest,textStatus,errorThrown){}});
        }
        function brand2Changed(brandId) {
            <g:remoteFunction controller="dropdown" action="brand2Changed"
                    update="subContainer2"
                    params="'brandId='+brandId"/>
//        jQuery.ajax({type:'POST',data:'categoryId='+categoryId, url:'/compare/dropdowm/categoryChanged',success:function(data,textStatus){jQuery('#subContainer').html(data);},error:function(XMLHttpRequest,textStatus,errorThrown){}});
        }
    </script>

    %{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">--}%
    %{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--}%
    %{--<g:javascript src="jquery-3.2.1.js" />--}%
    %{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--}%
    %{--<g:javascript src="bootstrap.min.js" />--}%

    <style>
    img {
        /*border: 1px solid #ddd;*/
        border-radius: 4px;
        padding: 5px;
        /*width: 150px;*/
    }

    img:hover {
        box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
    }
    .brandlogo{
        margin-left: 20px;
    }
    .container,body{
        width: 1100px;
        margin: 0 auto;
    }
    tr{
        margin: 5px;
    }

    /*//SLIDE SHOW//*/
    .mySlides {display:none;}

</style>
</head>

<body>
%{--<br><br><br><br><br>--}%
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

%{--<g:link controller="auction" action="place_bid">Place new item</g:link>--}%
%{--<g:link controller="auction" action="vw_bid">View available items</g:link>--}%
%{--<g:link controller="auction" action="ur_item">Items you placed</g:link>--}%

%{--//SLIDE SHOW//--}%
<div align="center">
    %{--<img class="mySlides" src="img_la.jpg" style="width:100%">--}%
    <img class="mySlides" src="${createLinkTo(dir:'images/slideshow/',
            file:'auction.png')}" width="1090px" height="450px" />
    <img class="mySlides" src="${createLinkTo(dir:'images/slideshow/',
            file:'rental.png')}" width="1090px" height="450px" />
    <img class="mySlides" src="${createLinkTo(dir:'images/slideshow/',
            file:'sales.png')}" width="1090px" height="450px"/>
</div>
<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) {myIndex = 1}
        x[myIndex-1].style.display = "block";
        setTimeout(carousel, 3000); // Change image every 2 seconds
    }
</script>
%{--//SLIDE SHOW END//--}%



%{--<g:form controller="dropdown" action="compareResult" >--}%
<g:form controller="dropdown" action="compareResult_colpse" >
    <table>
        <tr>
            <td>
                <b>Brand1:</b>
                <g:select id="brand" name="brand.id" from="${Brand.listOrderByVec_brand()}" optionKey="id"
                          noSelection="['': '-select-']"
                          onchange="brand1Changed(this.value);" required=""/>
            </td>
            <td>
                <b>Vehicle1:</b>
                <span id="subContainer1"></span>
            </td>
        </tr>

        <tr>
            <td>
                <b>Brand2:</b>
                <g:select id="brand" name="brand.id" from="${Brand.listOrderByVec_brand()}" optionKey="id"
                          noSelection="['': '-select-']"
                          onchange="brand2Changed(this.value);" required=""/>
            </td>
            <td>
                <b>Vehicle2:</b>
                <span id="subContainer2"></span>
            </td>
        </tr>
        <tr>
            <td>
                <g:submitButton name="submit" value="Compare" />
            </td>
        </tr>
    </table>
</g:form>

<h1>Type:</h1>
<div class="categoryList">
    <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">

        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <g:if test="${categoryInstance.vec_category!='Others'}">
                <td>
                    <g:link controller="category" action="s_show" id="${categoryInstance.id}"  style="margin: 0 5px 0 5px">
                        <img height="40" width="85" src="${resource(dir: 'images/category', file:''+ i+'.png')}"
                             title="${categoryInstance.vec_category} (${gadinepal_v1.Vehicle.countByCategory(categoryInstance)})"
                             style="margin: 0 10px 0 10px"/>
                    </g:link>
                </td>
            </g:if>
        </tr>
    </g:each>
</div>

<h1>Brands:</h1>
 <div class="brandlogo">
    <g:each in="${brandInstanceList}" status="i" var="brandInstance">

        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <g:if test="${brandInstance.vec_brand!='Others'}">
                <td>
                        <g:link controller="brand" action="show_n" id="${brandInstance.id}">
                            <img src="${createLinkTo(dir:'images/payload/brand_logo/'+brandInstance.vec_brand+"/",
                                    file:''+brandInstance.filename)}"
                                 alt="${brandInstance.filename}"
                                 title="${brandInstance.vec_brand}"
                                 height="100px" width="130px"/>
                        </g:link>
                </td>
            </g:if>
        </tr>
    </g:each>
 </div>

</body>
</html>