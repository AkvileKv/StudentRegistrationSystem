<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.cs" Inherits="WebAppStudentReg.Register" %>

<asp:Content ID="RegisterContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top:25px; width:400px;">
    <div>
        <asp:Label ID="nameLabel" runat="server" Width="100%" Text="Name: "></asp:Label>
        <asp:TextBox ID="nameField" runat="server" Width="100%" ></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="surnameLabel" runat="server" Width="100%" Text="Surname: "></asp:Label>
        <asp:TextBox ID="surnameField" runat="server" Width="100%" ></asp:TextBox>
    </div>
     <div>
        <asp:Label ID="idLabel" runat="server" Width="100%" Text="ID: "></asp:Label>
        <asp:TextBox ID="idField" runat="server" Width="100%" ></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="genderLabel" runat="server" Width="100%" Text="Gender: "></asp:Label>
        <asp:RadioButtonList ID="genderSelection" runat="server">
             <asp:ListItem Value="1">male</asp:ListItem>
             <asp:ListItem Value="2">female</asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div>

        <asp:Label ID="addressLabel" runat="server" Width="100%" Text="Address: "></asp:Label>
        <asp:TextBox ID="addressField" runat="server" Width="100%" ></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="phoneLabel" runat="server" Width="100%" Text="Telephone number: "></asp:Label>
        <asp:TextBox ID="telephoneField" runat="server" Width="100%" ></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="studyProgramme" runat="server" Width="100%" Text="Study programme: "></asp:Label>
        <asp:DropDownList ID="studyProgramSelection" runat="server" Width="100%" >
                <asp:ListItem Value="0">Select</asp:ListItem>
                <asp:ListItem Value="1">Computer Engineering</asp:ListItem>
                <asp:ListItem Value="2">Computer Systems</asp:ListItem>
                <asp:ListItem Value="3">Telecommunications Systems</asp:ListItem>
                <asp:ListItem Value="4">Electronics Engineering</asp:ListItem>
                <asp:ListItem Value="5">Information Systems</asp:ListItem>
                <asp:ListItem Value="6">Software Engineering</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div>
        <asp:Label ID="formOfStudies" runat="server" Width="100%" Text="Form of studies: "></asp:Label>
        <asp:DropDownList ID="formOfStudiesSelection" runat="server" Width="100%">
             <asp:ListItem Value="0">Select</asp:ListItem>
             <asp:ListItem Value="1">Regular</asp:ListItem>
             <asp:ListItem Value="2">Online</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div>
        <asp:CheckBox ID="agreeCheck" Checked="false" runat="server" Text="Agree to policy" />
    </div>

    <div style="text-align:center;">
            <asp:Label ID="errorLabel" runat="server" ForeColor="Red" Width="100%" Text=""></asp:Label>
    </div>

    <div  style="padding-top: 10px;">
        <asp:Button ID="registerButton" runat="server" Width="100%" OnClick="registerButton_Click" Text="Register" />
    </div>
    
    </div>
</asp:Content>