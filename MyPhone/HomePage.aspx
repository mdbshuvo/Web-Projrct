<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyPhone.HomePage" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Phone - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="w3css/Stylesheet1.css" />
    <link rel="stylesheet" href="CSS/HeaderFooter.css" />
    <link href="CSS/Common.css" rel="stylesheet" />

    <style>
        .pic-container {
        }

        .welcome-pic {
            width: 100%;
            height: auto;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">

        <div class="my-main">
            <div class="pic-container">
                <asp:Image CssClass="welcome-pic" ImageUrl="Images/MCI-Issues-Notices-to-Operators-for-Illegal-Telecom-Towers-640x400.jpg" ID="Image1" runat="server" Height="525px" Width="1007px" BorderWidth="2px" />
            </div>
            
            <h2 class="w3-center w3-purple">WELCOME</h2>
            <article>
                Feel free to know we have you covered every where you go on this country. Roam with us and enjoy the ultimate service.
            </article>

        </div>
       
        <uc1:header ID="Header1" runat="server" />
        <uc1:footer ID="Footer" runat="server" />
        <uc1:Sidebar ID="Sidebar" runat="server" />

        
    </form>

</body>
</html>
