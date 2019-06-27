<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VoicePack.aspx.cs" Inherits="MyPhone.VoicePack" %>

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
            background-color: wheat;
            box-shadow: 10px 10px 5px grey;
            transition-duration: .5s;
        }

            .flex-cont:hover {
                transform: scale(1.15);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="my-main">
        <h1 class="w3-center w3-purple"> Available Packages </h1>
        <div class="flex-cont">
            <h2 class="w3-center">Ovaboniyo</h2>
            <div class="w3-card">

                <span>MyPhone prepaid package comes with this Package. It Offers you flat rate of 23 poisha per 10 second for 24 hours.</span></div>
        </div>
        <div class="flex-cont">
            <h2 class="w3-center">Duronto</h2>
            <div class="w3-card">

                <span>This package with the highest number of F&amp;Fs allows you to talk to your near and dear ones at the lowest rate.</span></div>
        </div>
        <div class="flex-cont">
            <h2 class="w3-center">Laughter</h2>
            <div class="w3-card">

                <span>The Grameenphone Smile prepaid connection now gives you more freedom, more opportunities and more reasons to smile!!</span></div>
        </div>
        <div class="flex-cont">
            <h2 class="w3-center">Smart</h2>
            <div class="w3-card">

                <span>New djuice price plan from Grameenphone Ltd. is designed with the Youth in mind!</span></div>
        </div>

    
    </div>
    </form>

    
    <uc1:Header ID="Header1" runat="server" />
    <uc1:Footer ID="Footer1" runat="server" />
    <uc1:Sidebar ID="Sidebar" runat="server" />
</body>
</html>
