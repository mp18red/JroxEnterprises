<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="meetingSignIn.aspx.cs" Inherits="JRoxEnterprises.meetingSignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-center">JRox Enterprises</h1>
        <p class="lead" style="text-align: center">Welcome</p>
        <p></p>
       
    </div>
     <div style="text-align:center;width:100%";>
         <asp:Button ID="Button1" runat="server" Text="Sign In" margin="auto" class="btn btn-success btn-lg" Width="172px" OnClick="Button1_Click"/>
         <br />
         <br />
         <asp:Button ID="Button2" runat="server" Text="Home" margin="auto" class="btn btn-primary btn-lg" Width="172px" />
   </div>


<div style="text-align:center;width:100%" >
    <table class="table" style="table-layout: auto; border-collapse: separate">
  <thead class="thead-dark">



      <asp:GridView ID="GridView1" DataKeyNames="" runat="server" AutoGenerateColumns="false" CssClass="table">
          <Columns>
              <asp:TemplateField HeaderText="Ibo Name">
                  <ItemTemplate>
                      <asp:LinkButton ID="lnkType" runat="server" Text='<%# Eval("IboName") %>' ></asp:LinkButton>
                  </ItemTemplate>
              </asp:TemplateField>
              <%-- COLUMN #1 --%>
               <asp:TemplateField HeaderText="Candidate">
                  <ItemTemplate>
                      <asp:LinkButton ID="lnkType" runat="server" Text='<%# Eval("Candidate") %>' ></asp:LinkButton>
                  </ItemTemplate>
              </asp:TemplateField>
                <%-- COLUMN #2 --%>          
          </Columns>
      </asp:GridView>



      <%--<asp:GridView ID="GridView1" runat="server" margin="auto" CssClass="">
          <Columns>
              <asp:TemplateField HeaderText="Ibo Name">
                  <ItemTemplate>
                      <asp:LinkButton ID="lbltest" runat="server" Text='<%#Bind("IboName") %>' CommandName="Action"
                          CommandArgument='<%#Bind("ID") %>'></asp:LinkButton>
                  </ItemTemplate>
              </asp:TemplateField>
          </Columns>
      </asp:GridView>--%>
      </table>
    
</div>
  


</asp:Content>
