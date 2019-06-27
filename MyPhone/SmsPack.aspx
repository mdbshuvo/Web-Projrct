<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SmsPack.aspx.cs" Inherits="MyPhone.SmsPack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MY PHONE - Packages</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="w3css/Stylesheet1.css" />
    <link rel="stylesheet" href="CSS/HeaderFooter.css" />
    <link href="CSS/Common.css" rel="stylesheet" />

    <style>
        .flex-cont {
            width: 40%;
            float: left;
            height: 200px;
            margin: 5%;
            border: 2px solid black;
            box-shadow: 10px 10px 5px grey;
            transition-duration: .5s;
            padding: 20px;
        }

            .flex-cont:hover {
                transform: scale(1.15);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="my-main">
        <h1 class="w3-center w3-purple"> SMS Packages </h1>
        <div class="flex-cont">
            <h2 class="w3-center">300 sms&nbsp;</h2>
            <h3 class="w3-center">55tk</h3>
            <div class="w3-center">

                Validity: 30 days</div>
        </div>
        <div class="flex-cont">
            <h2 class="w3-center">200 sms</h2>
            <h3 class="w3-center">35tk</h3>
            <div class="w3-center">

                Validity: 30 days</div>
        </div>
        <div class="flex-cont">
            <h2 class="w3-center">100 sms</h2>
            <h3 class="w3-center">15tk</h3>
            <div class="w3-center">

                Validity: 10 days</div>
        </div>
        <div class="flex-cont">
            <h2 class="w3-center">75 sms</h2>
            <h3 class="w3-center">10tk</h3>
            <div class="w3-center">

                Validity: 10&nbsp; days</div>
        </div>
        <div class="flex-cont">
            <h2 class="w3-center">50 sms</h2>
            <h3 class="w3-center">5tk</h3>
            <div class="w3-center">

                Validity: 5 days</div>
        </div>
        <div class="flex-cont">
            <h2 class="w3-center">10 sms</h2>
            <h3 class="w3-center">3tk</h3>
            <div class="w3-center">

                Validity: 1 days</div>
        </div>

    
    </div>
    </form>

    
    <uc1:Header ID="Header1" runat="server" />
    <uc1:Footer ID="Footer1" runat="server" />
    <uc1:Sidebar ID="Sidebar" runat="server" />
</body>
</html>
