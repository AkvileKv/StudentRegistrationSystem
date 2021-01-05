<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.cs" Inherits="WebAppStudentReg.Login" %>

<asp:Content ID="LoginContent" ContentPlaceHolderID="MainContent" runat="server"> 
 
    <div class="jumbotron">
        <h2>Log In Form</h2>
        <h4>Please fill in the form</h4>
    </div>
    <div style="padding-top:10px; width:400px;">
    <div>
         <asp:Label ID="UsernameLabel" runat="server" Width="100%" Text="Username: "></asp:Label> 
         <asp:TextBox ID="usernameField" runat="server" Width="100%"></asp:TextBox>
    </div>
    <div>
         <asp:Label ID="passwordLabel" runat="server" Width="100%" Text=" Password: "></asp:Label>
         <asp:TextBox ID="passwordField" runat="server" Width="100%"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="errorLabel" runat="server" BackColor="White" ForeColor="#CC0000" Text=""></asp:Label>
    </div>
    <div  style="padding-top: 10px;">
        <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" />
    </div>
    </div>

    </asp:Content>
