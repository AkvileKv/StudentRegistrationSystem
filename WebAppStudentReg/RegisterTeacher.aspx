<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="RegisterTeacher.aspx.cs" Inherits="WebAppStudentReg.RegisterTeacher" %>

<asp:Content ID="RegisterTeacherContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Teacher registration</h2>
        <h4>Please fill in the form</h4>
   </div>
    
    <div style="padding-top:10px; width:400px;">

     <div>
        <asp:Label ID="nameLabel" runat="server" Width="100%" Text="Name:"></asp:Label>
        <asp:TextBox ID="nameField" runat="server" Width="100%" ></asp:TextBox>
     </div>
     <div>
        <asp:Label ID="surnameLabel" runat="server" Width="100%" Text="Surname:"></asp:Label>
        <asp:TextBox ID="surnameField" runat="server" Width="100%" ></asp:TextBox>
     </div>
     <div>
         <asp:Label ID="idLabel" runat="server" Width="100%" Text="ID:"></asp:Label>
         <asp:TextBox ID="idField" runat="server" Width="100%" ></asp:TextBox>
     </div>
     <div>
         <asp:Label ID="addressLabel" runat="server" Width="100%" Text="Address:"></asp:Label>
         <asp:TextBox ID="addressField" runat="server" Width="100%" ></asp:TextBox>
     </div> 
     <div>
         <asp:Label ID="telephoneLabel" runat="server" Width="100%" Text="Telephone number: "></asp:Label>
         <asp:TextBox ID="telephoneField" runat="server" Width="100%"></asp:TextBox>
     </div>
      <div>
         <asp:Label ID="emailLabel" runat="server" Width="100%" Text="E-mail address:"></asp:Label>
         <asp:TextBox ID="emailField" runat="server" Width="100%"></asp:TextBox>
      </div>
      <div>
         <asp:Label ID="facultyLabel" runat="server" Width="100%" Text="Faculty:"></asp:Label>
         <asp:DropDownList ID="facultySelection" runat="server" Width="100%">
             <asp:ListItem Value="0">Select</asp:ListItem>
                <asp:ListItem Value="1">Agrotechnologies</asp:ListItem>
                <asp:ListItem Value="2">Business Management</asp:ListItem>
                <asp:ListItem Value="3">Arts and Creative Technologies</asp:ListItem>
                <asp:ListItem Value="4">Electronics and Informatics</asp:ListItem>
                <asp:ListItem Value="5">Economics</asp:ListItem>
                <asp:ListItem Value="6">Health Care</asp:ListItem>
                <asp:ListItem Value="7">Pedagogy</asp:ListItem>
         </asp:DropDownList>
      </div>
      <div>
         <asp:Label ID="workingTypeLabel" runat="server" Width="100%" Text="Type of working day:"></asp:Label>
         <asp:RadioButtonList ID="workingTypeSelection" runat="server">
             <asp:ListItem Value="1">full-time</asp:ListItem>
             <asp:ListItem Value="2">part-time</asp:ListItem>
         </asp:RadioButtonList>
      </div>
      <div style="text-align:center;">
          <asp:Label ID="errorLabel" runat="server" ForeColor="Red" Width="100%" Text=""></asp:Label>
      </div>
      <div style="padding-top: 10px;">
          <asp:Button ID="registerButton" runat="server" Width="100%" OnClick="registerButton_Click" Text="Register" />
      </div>
     
    </div>
</asp:Content>
