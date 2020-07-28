
<%@ page import="gadinepal_v1.Bidder; gadinepal_v1.Auction" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'auction.label', default: 'Auction')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
    <style>
    p {
        text-align: center;
        font-size: 15px;
    }
    </style>
</head>

<body>
<a href="#list-auction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div id="list-auction" class="content scaffold-list" role="main">
    <h1>Upcoming...</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="nav" role="navigation">
        <ul>
            <li>
                <g:form action="search">
                    <g:textField name="keywords" />
                    <g:submitButton name="search" value="Search"/>
                </g:form>
            </li>
            <li><h4>Sort by:</h4></li>
            <li><g:select from="${gadinepal_v1.Brand.list()}" name="brand" optionValue="vec_brand" noSelection="['':'-brand-']" /></li>
            <li><g:select from="${gadinepal_v1.Category.list()}" name="category" optionValue="vec_category" noSelection="['':'-category-']" /></li>
        </ul>
    </div>

       <table>
        <thead>
        <tr>
            <th>Picture</th>

            <g:sortableColumn property="item_name" title="${message(code: 'auction.item_name.label', default: 'Vehicle Name')}" />

            <g:sortableColumn property="base_price" title="${message(code: 'auction.base_price.label', default: 'Baseprice')}" />

            <g:sortableColumn property="startDate" title="${message(code: 'auction.startDate.label', default: 'Start Date')}" />

            <g:sortableColumn property="endDate" title="${message(code: 'auction.endDate.label', default: 'End Date')}" />

        </tr>
        </thead>
        <tbody>
                    <g:each in="${auctionInstanceList}" status="i" var="auctionInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                          <g:if test="${auctionInstance.startDate > new Date()}" >
                          %{--<g:if test="${auctionInstance.status==false && new Date()>auctionInstance.startDate}" >--}%
                            <td>
                                <a href="${createLinkTo( dir:'/images/payload/auction_pictures/'+auctionInstance.user.name+'/', file: auctionInstance.filename, absolute:true )}" target="_new">
                                    <img src="${createLinkTo(dir:'/images/payload/auction_pictures/'+auctionInstance.user.name+'/',
                                            file:''+auctionInstance.filename)}"
                                         alt="${auctionInstance.filename}"
                                         title="${auctionInstance.filename}"
                                         height="80" width="auto"/>
                                </a>
                            </td>

                            <td><g:link action="show" id="${auctionInstance.id}">${fieldValue(bean: auctionInstance, field: "item_name")}</g:link></td>

                            <td>NRs. ${fieldValue(bean: auctionInstance, field: "base_price")}</td>

                            %{--<td>--}%
                                %{--<g:if test="${gadinepal_v1.Bidder.countByAuction(auctionInstance)}">--}%
                                    %{--NRs.${gadinepal_v1.Bidder.executeQuery("select max(amount) from Bidder where auction=$auctionInstance.id").get(0)}--}%
                                %{--</g:if>--}%
                                %{--<g:else>--}%
                                    %{---no bids---}%
                                %{--</g:else>--}%
                            %{--</td>--}%

                            <td><g:formatDate format="yyyy-MMM-dd hh-mm-ss" date="${auctionInstance.startDate}" /></td>

                            <td><g:formatDate format="yyyy-MMM-dd hh-mm-ss" date="${auctionInstance.endDate}" /></td>

                            %{--<td>--}%
                                %{--<g:if test="${gadinepal_v1.Bidder.findByAuctionAndUser(auctionInstance,session.user) }">--}%
                                    %{--<g:link controller="bidder" action="e_edit" id="${gadinepal_v1.Bidder.executeQuery("select id from Bidder where auction=$auctionInstance.id and user=$session.user.id").get(0)}"> Update </g:link>--}%
                                %{--</g:if>--}%
                                %{--<g:else>--}%
                                    %{--<g:link controller="bidder" action="bid" params="['auction.id': auctionInstance?.id,'user.id':session?.user?.id]">Bid</g:link>--}%
                                %{--</g:else>--}%
                                %{--(${gadinepal_v1.Bidder.countByAuction(auctionInstance)})--}%
                            %{--</td>--}%

                          </g:if>
                        </tr>
                    </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${auctionInstanceTotal}" />
    </div>
</div>

%{--<div id="content">--}%
    %{--This is content!!!--}%
%{--</div>--}%
</body>
</html>
