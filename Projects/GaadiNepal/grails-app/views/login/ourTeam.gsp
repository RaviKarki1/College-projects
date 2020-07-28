<!DOCTYPE html>

<html>
<head>
    <title>Our Team</title>
    <meta name="layout" content="main">

    <style>
        table{
            width: 700px;
            margin: 30px auto;
            border: none;
        }
        img {
            border-radius: 15%;
        }
        ul{
            list-style: square;
        }
    </style>

</head>

<body>
<h1>Our Team</h1>

<table>
        <tr>
            <td >
                <img height="75" width="100" src="${resource(dir: 'images/ourTeam/', file: 'test.jpg')}" alt=""/>
                <br><b>Raghbendra Raj</b>
            </td>
            <td>
                <ul>
                    <li style="margin: 5px 0 10px 0">Web/UI</li>
                    <li style="margin: 10px 0 10px 0">Auction System</li>
                    <li style="margin: 10px 0 10px 0">Vehicle Comparison</li>
                </ul>
            </td>

            <td>
                <img height="75" width="100" src="${resource(dir: 'images/ourTeam/', file: 'test.jpg')}" alt=""/>
                <br><b>Subash Parajuli</b>
            </td>
            <td>
                <ul>
                    <li style="margin: 5px 0 10px 0">Android (lead)</li>
                    <li style="margin: 10px 0 10px 0">Documentation</li>
                    <li style="margin: 10px 0 10px 0">Ideas/Concepts</li>
                </ul>
            </td>
        </tr>

        <tr>
            <td>
                <img height="75" width="100" src="${resource(dir: 'images/ourTeam/', file: 'test.jpg')}" alt=""/>
                <br><b>Ravi Karki</b>
            </td>
            <td>
                <ul>
                    <li style="margin: 5px 0 10px 0">Web</li>
                    <li style="margin: 10px 0 10px 0">Rental System</li>
                    <li style="margin: 10px 0 10px 0">Sales System</li>
                </ul>
            </td>

            <td>
                <img height="75" width="100" src="${resource(dir: 'images/ourTeam/', file: 'test.jpg')}" alt=""/>
                <br><b>Suman Shrestha</b>
            </td>
            <td>
                <ul>
                    <li style="margin: 5px 0 10px 0">Android</li>
                    <li style="margin: 10px 0 10px 0">Data Collection</li>
                    <li style="margin: 10px 0 10px 0">Support</li>
                </ul>
            </td>
        </tr>
</table>
</body>
</html>