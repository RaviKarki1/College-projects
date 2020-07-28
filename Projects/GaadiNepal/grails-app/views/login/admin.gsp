<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 18-Jul-17
  Time: 12:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>admin page</title>
    <meta name="layout" content="main">
    <style>
        table{
            width: 800px;
            margin: 30px auto;

        }
    </style>

</head>

<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>

<table>
    <tr>
        <th>User</th>
        <th>Vehicle</th>
        <th>Auction</th>
        <th>Rental</th>
        <th>Sales</th>
    </tr>
    <tr>
        <td>
            Customers:  ${gadinepal_v1.User.countByRole('customer')}
        </td>
        <td>
            Brand:${gadinepal_v1.Brand.count()}            <br>
            Category:${gadinepal_v1.Category.count()}      <br>
            Vehicles:${gadinepal_v1.Vehicle.count()}
        </td>
        <td>
            Total:${gadinepal_v1.Auction.count()}          <br>
            Happening:${gadinepal_v1.Auction.countByStartDateLessThanEquals(new Date())}     <br>
            Upcomming:${gadinepal_v1.Auction.countByStartDateGreaterThan(new Date())}
        </td>
        <td>
            Total:${gadinepal_v1.Rental.count()}           <br>
            OnRoad:xx                                      <br>
            ForRent:xx
        </td>
        <td>
            CurrentTotal:xx  <br>
            SoldOut:xx       <br>

        </td>

    </tr>

</table>


</body>
</html>