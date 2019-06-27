<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="MyPhone.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Phone - Log In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="w3css/Stylesheet1.css" />
    <link href="CSS/LogIn.css" rel="stylesheet" />

    <style>
        #registration_a {
            text-decoration: none;
        }

            #registration_a:hover {
                color: green;
            }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main-div">
        <div class="sub-div">
            <h2>Please Log In to Continue</h2>
            <asp:Panel ID="Panel1" runat="server" style="margin-left: 25px">
                <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" style="margin-top: 15px; margin-left: 25px;">
                <asp:TextBox ID="TextBox1" runat="server" Width="215px"></asp:TextBox>
            </asp:Panel>

            <asp:Panel ID="Panel3" runat="server" style="margin-top: 25px; margin-left: 25px;">
                <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" style="margin-top: 15px; margin-left: 25px;">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="215px"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" style="margin-top: 15px; margin-left: 25px;">
                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text=" Remember me for a day" />
                <asp:Panel ID="Panel9" runat="server" style="margin-top: 5px">
                    Don&#39;t have an account? <a id="registration_a" href="Registration.aspx" target="_blank">Create one</a>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel ID="Panel7" runat="server" style="margin-top: 23px; margin-left: 0px;">
                <asp:Button CssClass="submit-button w3-button w3-green w3-hover-gray" ID="Button2" runat="server" Text="LOG IN" OnClick="Button2_Click" />
            </asp:Panel>
            <asp:Panel class="hidden" ID="Panel8" runat="server" Visible="False" >
                The username or password didnot match</asp:Panel>
        </div>
        
    </div>
    </form>
</body>
</html>
