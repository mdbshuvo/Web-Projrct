<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MyPhone.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MY PHONE - Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="w3css/Stylesheet1.css" />
    <link rel="stylesheet" href="CSS/LogIn.css" />

    <style>
        .pass-div {
            position: absolute;
            width: 250px;
            top: 254px;
            left: 265px;
            background-color: red;
            color: white;
            border-radius:5px;
            border: 1px solid gray;
            text-align: center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="main-div">
        <div class="sub-div">
            <h2>Please Fill up the Form</h2>

            <asp:Panel ID="Panel9" runat="server" style="margin-left: 25px; margin-top: 15px">
                <asp:Label ID="Label3" runat="server" Text="Phone Number :"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel10" runat="server" style="margin-left: 25px; margin-top: 10px">
                <asp:TextBox ID="TextBox3" runat="server" Width="215px" CssClass="" ToolTip="Enter your phone no.">+88011</asp:TextBox>
                    
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server" style="margin-left: 25px; margin-top: 15px;">
                <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" style="margin-top: 10px; margin-left: 25px;">
                <asp:TextBox ID="TextBox1" runat="server" Width="215px"></asp:TextBox>
            </asp:Panel>

            <asp:Panel ID="Panel3" runat="server" style="margin-top: 15px; margin-left: 25px;">
                <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" style="margin-top: 10px; margin-left: 25px;">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="215px" onchange="javascript: pass_verify(this)"></asp:TextBox>
                
            </asp:Panel>

            <asp:Panel ID="Panel11" runat="server" style="margin-left: 25px">
                <asp:Label ID="Label4" runat="server" Text="Confirm Password :"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel12" runat="server" style="margin-left: 25px; margin-top: 10px">
                <asp:TextBox ID="TextBox4" runat="server" Width="215px" TextMode="Password"></asp:TextBox>
            </asp:Panel>

            <asp:Panel ID="Panel5" runat="server" style="margin-top: 15px; margin-left: 25px; padding-top: 0px;">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Checked="false" OnCheckedChanged="CheckBox1_CheckedChanged" Text=" I agree the terms and conditions" />
            </asp:Panel>

            <asp:Panel ID="Panel7" runat="server" style="margin-top: 11px; margin-left: 0px;">
                <asp:Button CssClass="submit-button w3-button w3-green w3-hover-gray w3-center" ID="Button2" runat="server" Text="SIGN UP" OnClick="Button2_Click" OnClientClick="pass_verify()" Enabled="False"/>
            </asp:Panel>
            <asp:Panel CssClass="hidden" ID="Panel8" runat="server" Visible="False" HorizontalAlign="Center" >
                Please fill up the fields properly

            </asp:Panel>
            <asp:Panel CssClass="hidden" ID="Panel13" runat="server" Visible="False" HorizontalAlign="Center">
                Passwords doesnot match!!
            </asp:Panel>
            <asp:Panel CssClass="hidden"  ID="Panel14" runat="server" Visible="False" HorizontalAlign="Center">
                Username or Phone number is Registered try a different one
            </asp:Panel>

            <div class="pass-div" id="pass-not" style="visibility: hidden;">
                Password is too short. <br />
                It should be 6-18 characters!!
            </div>
        </div>
        
    </div>
    </form>

    <script>
        function pass_verify(textControl) {
            var pass = textControl.value;
            var count = pass.length;

            //window.alert(pass + "<br>" + pass.search("[0-9]") + "<br> " + pass.search("[A_Z]") + "<br> " + pass.search("[a-z]"));

            if(count<6) {
                document.getElementById("pass-not").style.visibility = "visible";
                document.getElementById("pass-not").innerHTML = "The password is too short <br> it must contain 6-12 charcters";
                document.getElementById('<%= Button2.ClientID %>').disabled = true;
            } 
            else if (count > 12) {
                document.getElementById("pass-not").style.visibility = "visible";
                document.getElementById("pass-not").innerHTML = "The password is too long <br> it must contain 6-12 charcters";
                document.getElementById('<%= Button2.ClientID %>').disabled = true;
            }
            else if (pass.search("[0-9]") == -1 || pass.search("[A-Z]") == -1 || pass.search("[a-z]") == -1) {
                document.getElementById("pass-not").style.visibility = "visible";
                document.getElementById("pass-not").innerHTML = "The password must contain <br> A capital and a small letter <br> and a digit!!";
                document.getElementById('<%= Button2.ClientID %>').disabled = true;
            }
            else {
                document.getElementById("pass-not").style.visibility = "hidden";
                document.getElementById('<%= Button2.ClientID %>').disabled = false;
            }
            
        }
    </script>
</body>
</html>

