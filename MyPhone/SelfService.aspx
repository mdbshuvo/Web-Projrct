<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelfService.aspx.cs" Inherits="MyPhone.SelfService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MY PHONE - Self Service</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="w3css/Stylesheet1.css" />
    <link rel="stylesheet" href="CSS/HeaderFooter.css" />

    <style>
        .topPan {
            background-color:#999966;
            }
            .topPan span {
                font-size:20px;
                margin-left:25px;
            }

        .logout {
            float:right;
            margin-right: 20px;
            margin-top: 15px;
        }

        .details {
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-top:110px;">
        <asp:Panel CssClass="topPan" ID="Panel1" runat="server" Height="65px">
            <span style="float:left; margin-top: 2px;">&nbsp;&nbsp;&nbsp; WELCOME<br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            </span>
            <asp:Button CssClass="logout w3-button w3-red" runat="server" ID="LogOut" Text="Logout" OnClick="LogOut_Click" />

        </asp:Panel>

        <div class="w3-center details">
            <b>Username : </b><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <br />
            <b>Phone Number : </b><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> <br />
            <b>Email : </b><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> <br />
            <b>Package Registered : </b><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

        </div>
    </div>
        <uc1:Header ID="Header1" runat="server" />
        <uc1:Footer ID="Footer1" runat="server" />
    </form>

</body>
</html>
