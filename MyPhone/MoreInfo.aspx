<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoreInfo.aspx.cs" Inherits="MyPhone.MoreInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>More Information</title>
    <link href="w3css/StyleSheet1.css" rel="stylesheet" />
    <style>
        .note {
            background-color: chocolate;
        }

        .inner {
            margin: 20px;
        }

        .hidden {
            margin: 15px 15px;
            padding: 5px;
            border-radius: 5px;
            color: white;
            background-color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2 class="w3-center w3-purple">Additional information</h2>
        <div class="note">
            Welcome user.<br />
            We need some additional information, <br />
            Please Fill up the Fields.<br />
        </div>

        <hr />

        <div class="inner">
            <asp:Panel ID="Panel1" runat="server" style="margin-bottom: 19px">
                <asp:Label ID="Label1" runat="server" Text="Email :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </asp:Panel>

            <asp:Panel CssClass="hidden" ID="Panel3" runat="server" Visible="False">
                <asp:Label ID="Label3" runat="server" Text="Label">Enter a valid email!!</asp:Label>
            </asp:Panel>
        
            <asp:Panel ID="Panel2" runat="server">
                <asp:Label ID="Label2" runat="server" Text="Your Package :"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userinfo %>" ProviderName="<%$ ConnectionStrings:userinfo.ProviderName %>" SelectCommand="SELECT [Id], [Name] FROM [Packs]"></asp:SqlDataSource>
            </asp:Panel>

            <div class="w3-center">
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="w3-button w3-red" OnClick="Button1_Click" />
            </div>
            
        </div>
        

    </div>
        
    </form>
</body>
</html>
