﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="JRoxEnterprises.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="jumbotron">
        <h1 class="text-center">JRox Enterprises</h1>
        <p class="lead" style="text-align: center">Welcome</p>
        <p>  </p>
</div>

    <div style="text-align:center;width:100%";>
        <br />
        <br />
        <asp:TextBox ID="IboTextBox" runat="server" ></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="CandidateTextBox" runat="server" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BTNedit" margin="auto" class="btn btn-success btn-lg" runat="server" Text="Update" Width="172px" OnClick="BTNedit_Click" />
        <br />
        <br />
        <asp:Button ID="BTNdelete" runat="server" Text="Delete" margin="auto" class="btn btn-danger btn-lg" Width="172px" OnClick="BTNdelete_Click"/>
        <br />
        
        
   </div>




</asp:Content>
