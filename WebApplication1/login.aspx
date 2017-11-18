<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Managment System</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 134px;
        }
        .auto-style3 {
            width: 134px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 202px;
        }
        .auto-style6 {
            height: 23px;
            width: 202px;
        }
    </style>
</head>
<body>
    <form id="form1" method="post" runat="server">
    <div>
        <h1 style="text-align:center">ABC Company</h1>
        <h2 style="text-align:center">&nbsp;Employee  Managment  System</h2>
    
    </div>
    <div>
         You must login first ....
         <br />
         <br />
         <table class="auto-style1">
             <tr>
                 <td class="auto-style2">Username:</td>
                 <td class="auto-style5">
                     <asp:TextBox ID="userName" runat="server" Width="177px"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">Password:</td>
                 <td class="auto-style6">
                     <asp:TextBox ID="password" runat="server" Width="177px" TextMode="Password"></asp:TextBox>
                 </td>
                 <td class="auto-style4"></td>
             </tr>
             <tr>
                 <td class="auto-style3"></td>
                 
                 <td class="auto-style6">
                     <asp:Button ID="btnLogin" runat="server" Text="Login" Width="107px" OnClick="btnLogin_Click" />
                 </td>

                 <td class="auto-style4">
                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                 </td>

                 
             </tr>
         </table>
    </div>
    </form>
    
    </body>
</html>
