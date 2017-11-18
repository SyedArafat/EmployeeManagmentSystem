<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminEditDelete.aspx.cs" Inherits="WebApplication1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" ControlStyle-Width="150" HeaderText="Id" SortExpression="id" InsertVisible="False" ReadOnly="True" >
            <ControlStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="userName" ControlStyle-Width="100" HeaderText="Name" SortExpression="userName" >
            <ControlStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="email" ControlStyle-Width="100" HeaderText="Email" SortExpression="email" >
            <ControlStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="fullName" ControlStyle-Width="130" HeaderText="Full Name" SortExpression="fullName" >
            <ControlStyle Width="130px" />
            </asp:BoundField>
            <asp:BoundField DataField="phoneNumber" ControlStyle-Width="100" HeaderText="Phone Number" SortExpression="phoneNumber" >
            <ControlStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="address" ControlStyle-Width="100" HeaderText="Address" SortExpression="address" >
            <ControlStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="password" ControlStyle-Width="100" HeaderText="Password" SortExpression="password" >
<ControlStyle Width="100px"></ControlStyle>
            </asp:BoundField>
            <asp:TemplateField HeaderText="User Type" SortExpression="type">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" selectedValue='<%# Bind("type") %>'>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Staff</asp:ListItem>

                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Department Id" SortExpression="departmentId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("departmentId") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("departmentId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="salary" ControlStyle-Width="100" HeaderText="Salary" SortExpression="salary" >
<ControlStyle Width="100px"></ControlStyle>
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emsConnectionString %>" DeleteCommand="DELETE FROM [userTable] WHERE [id] = @id" InsertCommand="INSERT INTO [userTable] ([userName], [email], [fullName], [phoneNumber], [address], [password], [type], [departmentId], [salary]) VALUES (@userName, @email, @fullName, @phoneNumber, @address, @password, @type, @departmentId, @salary)" SelectCommand="SELECT * FROM [userTable]" UpdateCommand="UPDATE [userTable] SET [userName] = @userName, [email] = @email, [fullName] = @fullName, [phoneNumber] = @phoneNumber, [address] = @address, [password] = @password, [type] = @type, [departmentId] = @departmentId, [salary] = @salary WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="fullName" Type="String" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="departmentId" Type="Int32" />
            <asp:Parameter Name="salary" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="fullName" Type="String" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="departmentId" Type="Int32" />
            <asp:Parameter Name="salary" Type="Decimal" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </asp:Content>
