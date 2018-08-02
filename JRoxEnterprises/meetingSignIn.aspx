<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableViewState="true" CodeBehind="meetingSignIn.aspx.cs" Inherits="JRoxEnterprises.meetingSignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-center">JRox Enterprises</h1>
        <h4 class="lead" style="text-align: center">Welcome</h4>
        <p class="lead" style="text-align: center"><%: DateTime.Now %></p>
       
    </div>
     <div style="text-align:center;width:100%";>
         <asp:Button ID="Button1" runat="server" Text="Check In" margin="auto" class="btn btn-primary btn-lg" Width="172px" OnClick="Button1_Click"/>
         
         <asp:Button ID="Button2" runat="server" Text="Home" margin="auto" class="btn btn-dark btn-lg" Width="172px" OnClick="Button2_Click" />
   </div>


<div style="text-align:center;width:100%" >
      <br />
         <br />
    <div class="table-responsive">
      <asp:GridView ID="GridView1" DataKeyNames="ID" runat="server" style="text-align:center" AutoGenerateColumns="false" CssClass="table" BorderColor="Black" BackColor="White" OnRowCommand="Gridview1_RowCommand">
          <Columns>
       
                    <asp:TemplateField HeaderText="Ibo Name" HeaderStyle="Center">
                      <itemtemplate>
                      <asp:LinkButton ID="lnkType" runat="server" style="color:black" Text='<%# Eval("IboName") %>' CommandArgument ='<%#Eval("ID")+"|"+ Eval("IboName")+"|"+ Eval("Candidate")%>' CommandName="Action" CausesValidation="true"></asp:LinkButton>
                  </itemtemplate>
                  </asp:TemplateField>
                  <%-- COLUMN #1 IBO Name --%>
                  <asp:TemplateField HeaderText="Candidate">
                      <itemtemplate>
                      <asp:LinkButton ID="lnkType1" runat="server" style="color:black" Text='<%# Eval("Candidate") %>' ></asp:LinkButton>
                  </itemtemplate>
                  </asp:TemplateField>
                  <%-- COLUMN #2 Candidate--%>
      
          </Columns>
      </asp:GridView>
          </div>


    
    
</div>
  


</asp:Content>
