<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addNew.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        margin-top: 0px;
    }
    .auto-style5 {
            width: 252px;
            height: 41px;
            text-align: right;
            font-weight: bold;
        }
    .auto-style6 {
            height: 41px;
            width: 248px;
        }
    .auto-style7 {
            width: 252px;
            height: 36px;
            text-align: right;
            font-weight: bold;
        }
    .auto-style8 {
            height: 36px;
            width: 248px;
        }
    .auto-style9 {
        width: 252px;
        height: 32px;
        text-align: right;
            font-weight: bold;
        }
    .auto-style10 {
        height: 32px;
            width: 248px;
        }
    .auto-style14 {
            height: 38px;
            width: 248px;
            font-weight: 700;
        }
    .auto-style15 {
            width: 252px;
            height: 38px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style19 {
            width: 252px;
            height: 22px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style20 {
            height: 22px;
            width: 248px;
        }
        .auto-style22 {
            height: 36px;
        }
        .auto-style25 {
            height: 30px;
        }
        .auto-style26 {
            width: 252px;
            height: 30px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style27 {
            height: 30px;
            width: 248px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">User Name:</td>
            <td class="auto-style14">&nbsp;&nbsp;
                <asp:TextBox ID="userName" runat="server" Height="25px" Width="219px"></asp:TextBox></td>
                <td>&nbsp;&nbsp; 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="userName" ErrorMessage="User Name is required" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">Email:</td>
            <td class="auto-style27">&nbsp;&nbsp;
                <asp:TextBox ID="email" runat="server" Height="25px" Width="219px"></asp:TextBox></td>
                <td class="auto-style25">&nbsp;&nbsp;
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="email" ErrorMessage="Email is required" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
&nbsp;
                    &nbsp;&nbsp;&nbsp;<br />
                    &nbsp; &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email address" Font-Bold="True" Font-Italic="False" Font-Size="Large" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="font-weight: 700"></asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Full Name:</td>
            <td class="auto-style20">&nbsp;&nbsp;
                <asp:TextBox ID="fullName" runat="server" Height="25px" Width="219px"></asp:TextBox></td>
            <td> &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="fullName" ErrorMessage="Full Name is required" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Phone Number:</td>
            <td class="auto-style8">&nbsp;&nbsp;
                <asp:TextBox ID="phoneNo" runat="server" Height="25px" Width="219px"></asp:TextBox></td>
            <td>&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="phoneNo" ErrorMessage="you must give a phone number" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Salary:</td>
            <td class="auto-style8">&nbsp;&nbsp;
                <asp:TextBox ID="salary" runat="server" Height="25px" Width="219px"></asp:TextBox></td>
            <td>&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="salary" ErrorMessage="Salary is required" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Address:</td>
            <td class="auto-style10">&nbsp;&nbsp;
                <asp:TextBox ID="address" runat="server" Height="25px" Width="219px"></asp:TextBox></td>
                 <td>&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="address" ErrorMessage="Address is required" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Password:</td>
            <td class="auto-style8">&nbsp;&nbsp;
                <asp:TextBox ID="password" runat="server" Height="25px" Width="219px" TextMode="Password"></asp:TextBox></td>
            <td class="auto-style22">&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="password" ErrorMessage="Password is required" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Confirm Password:</td>
            <td class="auto-style8">&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server" Height="25px" Width="219px" style="margin-top: 2px" TextMode="Password"></asp:TextBox></td>
            <td class="auto-style22">&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="TextBox9" ErrorMessage="This field is required" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator2" runat="server" BorderColor="#3333FF" BorderStyle="None" ControlToCompare="password" ControlToValidate="TextBox9" ErrorMessage="Password don't match" Font-Bold="True" Font-Size="Large" ForeColor="Red" style="margin-left: 0px"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Department:</td>
            <td class="auto-style8">&nbsp;&nbsp;
                <asp:DropDownList ID="department" runat="server" DataSourceID="SqlDataSource1" DataTextField="departmentName" DataValueField="id" Height="40px" Width="220px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emsConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
            </td>
            <td class="auto-style22">&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="department" ErrorMessage="This field is required" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;
                </td>
        </tr>

        <tr>
            <td class="auto-style5">User Type:</td>
            <td class="auto-style6">
                &nbsp;&nbsp;
                <asp:DropDownList ID="userType" runat="server" Height="40px" style="margin-top: 2px" Width="220px">
                    <asp:ListItem Selected="True">Select Role</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Staff</asp:ListItem>
                </asp:DropDownList></td>
            <td>&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" BorderColor="#0000CC" BorderStyle="None" ControlToValidate="userType" ErrorMessage="You must select a user type" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Red" style="font-weight: 700" InitialValue="Select Role"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    
    
    &nbsp;&nbsp;&nbsp;
        <div style="padding-left:300px">
        <asp:Button ID="Button1" runat="server"  Text="Add Employee" BackColor="#00CC00" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" Width="160px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="message" runat="server" BackColor="#CCFFFF" BorderColor="#990099" Font-Bold="True" Font-Italic="True"></asp:Label>
        </div>

</asp:Content>
