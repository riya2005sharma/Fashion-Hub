<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<h2>Register</h2>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox><br />
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox><br />
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox><br />

    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-primary mt-3" onclick="Button1_Click" />
</asp:Content>

