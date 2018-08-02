<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="JRoxEnterprises.signIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="text-center">JRox Enterprises</h1>
        <p class="lead" style="text-align: center">Welcome</p>
        <p>  </p>
</div>

    <div style="text-align:center;width:100%";>
        <br />
        <br />
        <asp:TextBox ID="IboTextBox" runat="server" placeholder="Ibo Name"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="CandidateTextBox" runat="server" placeholder="Candidate Name"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BTNsignin" margin="auto" class="btn btn-success btn-lg" runat="server" Text="Sign In" Width="172px" OnClick="BTNsignin_Click"  />
        <br />
        <br />
        
        
   </div>






</asp:Content>
