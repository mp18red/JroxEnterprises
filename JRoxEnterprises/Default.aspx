<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JRoxEnterprises._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron">
        <h1 class="text-center">JRox Enterprises</h1>
        <p class="lead" style="text-align: center">Welcome</p>
        <p>  </p>
</div>

    <div style="text-align:center;width:100%";>
        <asp:Button ID="BTNmeetingsignin" margin="auto" class="btn btn-primary btn-lg" runat="server" Text="Meeting Sign In" OnClick="Button1_Click" Width="172px"  />

   </div>
</asp:Content>
