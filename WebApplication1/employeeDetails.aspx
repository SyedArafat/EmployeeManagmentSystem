<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="employeeDetails.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 141px;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style4 {
            width: 141px;
            height: 32px;
        }
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            width: 141px;
            height: 30px;
        }
        .auto-style7 {
            height: 33px;
        }
        .auto-style8 {
            width: 141px;
            height: 33px;
        }
        .auto-style9 {
            height: 37px;
        }
        .auto-style10 {
            width: 141px;
            height: 37px;
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style12 {
            width: 141px;
            height: 34px;
        }
        .auto-style13 {
            height: 36px;
        }
        .auto-style14 {
            width: 141px;
            height: 36px;
        }
        .auto-style15 {
            height: 36px;
            width: 289px;
        }
        .auto-style16 {
            height: 30px;
            width: 289px;
        }
        .auto-style17 {
            height: 33px;
            width: 289px;
        }
        .auto-style18 {
            height: 32px;
            width: 289px;
        }
        .auto-style19 {
            height: 37px;
            width: 289px;
        }
        .auto-style20 {
            height: 34px;
            width: 289px;
        }
        .auto-style21 {
            width: 289px;
        }
        .auto-style22 {
            height: 36px;
            width: 132px;
        }
        .auto-style23 {
            height: 30px;
            width: 132px;
        }
        .auto-style24 {
            height: 33px;
            width: 132px;
        }
        .auto-style25 {
            height: 32px;
            width: 132px;
        }
        .auto-style26 {
            height: 37px;
            width: 132px;
        }
        .auto-style27 {
            height: 34px;
            width: 132px;
        }
        .auto-style28 {
            width: 132px;
        }
        .auto-style29 {
            height: 48px;
            width: 132px;
        }
        .auto-style30 {
            width: 141px;
            height: 48px;
        }
        .auto-style31 {
            height: 48px;
            width: 289px;
        }
        .auto-style32 {
            height: 48px;
        }
        .auto-style33 {
            height: 42px;
            width: 132px;
        }
        .auto-style34 {
            width: 141px;
            height: 42px;
        }
        .auto-style35 {
            height: 42px;
            width: 289px;
        }
        .auto-style36 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
<table class="auto-style1">
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style14">User Name:</td>
            <td class="auto-style15">
                <asp:Label ID="userName" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                <asp:TextBox Visible="false" ID="TextBox1" runat="server" Font-Size="Medium" style="font-weight: 700; font-style: italic"></asp:TextBox>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style6">Full Name:</td>
            <td class="auto-style16">
                <asp:Label ID="fullName" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                <asp:TextBox Visible="false" ID="TextBox2" runat="server" Font-Size="Medium" style="font-weight: 700; font-style: italic"></asp:TextBox>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style8">Phone Number:</td>
            <td class="auto-style17">
                <asp:Label ID="phoneNo" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                <asp:TextBox Visible="false" ID="TextBox3" runat="server" Font-Size="Medium" style="font-weight: 700; font-style: italic"></asp:TextBox>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style4">Email:</td>
            <td class="auto-style18">
                <asp:Label ID="email" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                <asp:TextBox Visible="false" ID="TextBox4" runat="server" Font-Size="Medium" style="font-weight: 700; font-style: italic"></asp:TextBox>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style10">Address:</td>
            <td class="auto-style19">
                <asp:Label ID="address" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                <asp:TextBox Visible="false" ID="TextBox5" runat="server" Font-Size="Medium" style="font-weight: 700; font-style: italic"></asp:TextBox>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style8">User Role:</td>
            <td class="auto-style17">
                <asp:Label ID="role" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                <asp:DropDownList Visible="false" ID="TextBox6" runat="server" Height="38px" style="margin-top: 2px" Width="198px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Staff</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style8">Department:</td>
            <td class="auto-style17">
                <asp:Label ID="department" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                <asp:DropDownList ID="TextBox7" Visible="false" runat="server" DataSourceID="SqlDataSource1" DataTextField="departmentName" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emsConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style12">Salary:</td>
            <td class="auto-style20">
                <asp:Label ID="salary" runat="server" style="font-weight: 700; font-style: italic"></asp:Label>
                <asp:TextBox Visible="false" ID="TextBox8" runat="server" Font-Size="Medium" style="font-weight: 700; font-style: italic"></asp:TextBox>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style30"></td>
            <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button OnClientClick="onEditClick()" ID="Button1" runat="server" BackColor="#FF6600" ForeColor="White" style="text-align: center" Text="Edit" Width="105px" OnClick="Button1_Click" Font-Bold="True" Font-Size="X-Large" />
                <asp:Button Visible="false" ID="update" runat="server" Text="Update" BackColor="#33CC33" Font-Bold="True" Font-Size="X-Large" Width="117px" OnClick="update_Click" />
            </td>
            <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="delete" runat="server" BackColor="Red" ForeColor="#CCCCFF" style="text-align: center" Text="Delete" Width="105px" Font-Bold="True" Font-Size="X-Large" OnClick="delete_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style34"></td>
            <td class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style36"></td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


    <script type="text/javascript">
        function onEditClick() {
            alert("Love to do it");
        }

     </script>
</asp:Content>
