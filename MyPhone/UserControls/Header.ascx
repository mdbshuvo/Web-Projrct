<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="MyPhone.Header" %>

<asp:Panel ID="Panel1" runat="server">
    <h1 class="w3-panel w3-green w3-center" style="position:fixed;width:100%; top: -17px; left: 0px;border:2px solid #004d00">MY PHONE</h1>
</asp:Panel>

<nav id="nav" class="w3-bar w3-red" runat="server" style="position:fixed;top:58px; left: 0px;border:2px solid #cc0000">
            
    <a id="A1" href="/Homepage.aspx" class="w3-bar-item w3-button w3-left w3-hover-gray" runat="server">Home</a>
    <a id="A2" href="/PlansAndOffers.aspx" class="w3-bar-item w3-button w3-left w3-hover-gray" runat="server">Plans & Offers</a>
    <a id="A4" href="/VoicePack.aspx" class="w3-bar-item w3-button w3-left w3-hover-gray" runat="server">Packages</a>
    <a id="A5" href="/LogIn.aspx" class="w3-bar-item w3-button w3-left w3-hover-gray" runat="server">Self Service</a>
            
</nav>