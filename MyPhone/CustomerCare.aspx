<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerCare.aspx.cs" Inherits="MyPhone.CustomerCare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MY PHONE - Customer Care</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="w3css/Stylesheet1.css" />
    <link rel="stylesheet" href="CSS/HeaderFooter.css" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <style>
        .pic-container img {
            width: 90%;
        }

        .my-main-extended {
            padding: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="my-main my-main-extended" >
        
        <div class="pic-container">
            <asp:Image ID="Image1" runat="server" src="Images/contact_us_1692_490.jpg" />
        </div>

        <div class="w3-content">
            <h3>Customer care centers :</h3>
            <asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem>Dhaka : Jalil Tower, Mirpur 11</asp:ListItem>
                <asp:ListItem>Khulna : Akankha Tower, KDA Avenue, Daulatpur</asp:ListItem>
                <asp:ListItem>Barisal : An-Nur Tower, Banglabazar</asp:ListItem>
                <asp:ListItem>Chattagram : Thana Vobon, Cox's Bazar</asp:ListItem>
                <asp:ListItem>Sylhet : Arafat Mansion, Moulovibazar</asp:ListItem>
            </asp:BulletedList>
        </div>

    </div>
        
        <uc1:Header ID="Header1" runat="server" />
        <uc1:Footer ID="Footer1" runat="server" />
        <uc1:Sidebar ID="Sidebar" runat="server" />
    </form>
</body>
</html>
