<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlansAndOffers.aspx.cs" Inherits="MyPhone.PlansAndOffers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MY PHONE - Plans and Offers</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="w3css/Stylesheet1.css" />
    <link rel="stylesheet" href="CSS/HeaderFooter.css" />
    <link href="CSS/Common.css" rel="stylesheet" />

    <style>
        h1 {
            background-color: lightblue;
            color: white;
        }

        .data-ul {
            list-style-type: circle;
            margin-top: 25px;
            margin-bottom: 190px;
        }
        
            .data-ul li {
                margin: 10px;
            }
            
            .data-ul li:hover {
                background-color: gray;
            }

                .data-ul li a {
                    font-size: 20px;
                    text-decoration: none;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="my-main">
            <h1>Choose an option</h1>

            <ul class="data-ul">
                <li><a href="VoicePack.aspx">Available Packages</a></li>
                <li><a href="DataPack.aspx">Data Packages</a></li>
                <li><a href="SmsPack.aspx">Sms Packages</a></li>
                <li><a href="MinutePack.aspx">Minute Packages</a></li>
            </ul>
        </div>

        <uc1:Header ID="Header1" runat="server" />
        <uc1:Footer ID="Footer1" runat="server" />
        <uc1:Sidebar ID="Sidebar" runat="server" />
    </form>
</body>
</html>
