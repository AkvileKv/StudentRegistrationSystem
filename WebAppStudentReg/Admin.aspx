<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master"  CodeBehind="Admin.aspx.cs" Inherits="WebAppStudentReg.WebForm1" %>

<asp:Content ID="LoginContent" ContentPlaceHolderID="MainContent" runat="server"> 
 
    <div class="jumbotron">
        <h2>Logged in as Administrator</h2>
        <h4>Please confirm all changes at the end of the work</h4>
    </div>
    <div style="padding-top:10px; width:400px;">
    <div style="padding-top: 5px;">
        <asp:Label ID="teacherLabel" runat="server"  Width="100%" Text="Teacher:"></asp:Label>
        <asp:ListBox ID="teacherListBox" runat="server" Width="100%">
            <asp:ListItem>John Smith</asp:ListItem>
            <asp:ListItem>Hames Olive</asp:ListItem>
            <asp:ListItem>Samanta Strange</asp:ListItem>
            <asp:ListItem>Philip Morris</asp:ListItem>
        </asp:ListBox>   
    </div>
        <div style="text-align:left;">      
            <asp:Button ID="selectTeacherButton" runat="server" Text="Add" OnClick="confirmTeacherButton_Click" Width="30%" /> 
        </div>
    <div style="padding-top: 5px;">      
        <asp:Label ID="subjectsLabel" runat="server" Width="100%" Text="Subject:"></asp:Label>

        <asp:ListBox ID="subjectsListBox" runat="server"  Width="100%" OnSelectedIndexChanged="subjectsListBox_SelectedIndexChanged" SelectionMode="Multiple">
            <asp:ListItem>Math</asp:ListItem>
            <asp:ListItem>History</asp:ListItem>
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Programming</asp:ListItem>
        </asp:ListBox>     
    </div>
        <div style="text-align:left;">
             <asp:Button ID="addSubjectButton" runat="server" Text="Select" Width="30%" OnClick="addSubjectButton_Click" />
        </div>
        <div style="text-align:center; padding-top: 10px; " >         
            <asp:Label ID="errorLabel" runat="server" ForeColor="Red" Width="100%" Text=""></asp:Label>
            
        </div>
    <div style="height: 48px">
        <asp:Label ID="selectedTeacherLabel" runat="server"  Width="100%" Text="Selected Teacher:"></asp:Label>
        <asp:ListBox ID="selectedTeacherListBox" runat="server"  Width="100%" Height="29px"></asp:ListBox>  
    </div>
        <div style="text-align:left;">
            <asp:Button ID="removeTeacherButton" runat="server" Text="Remove" Width="30%" OnClick="removeTeacherButton_Click" />
        </div>

    <div style="padding-top: 5px;">
        <asp:Label ID="selectedSubjectsLabel" runat="server" Width="100%" Text="Selected subjects:"></asp:Label>
        <asp:ListBox ID="selectedSubjectsListBox" runat="server"  Width="100%" SelectionMode="Multiple"></asp:ListBox>            
    </div>
        <div style="text-align:left;">
             <asp:Button ID="removeSubjectButton" runat="server" Text="Remove" Width="30%" OnClick="removeSubjectButton_Click" />
             
        </div>
        <div style="padding-top: 10px;">
              <asp:Button ID="confirmAllButton1" runat="server" Width="100%"  Text="Confirm" OnClick="confirmAllButton1_Click" />
        </div>
    </div>

    </asp:Content>

