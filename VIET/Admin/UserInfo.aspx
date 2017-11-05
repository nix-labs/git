<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="UserInfo.aspx.vb" Inherits="Admin_UserInfo" title="VIET - User Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="UserInfoDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Members] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [Members] ([UserName], [FirstName], [LastName], [Course], [Department], [YearofJoining], [Group], [Gender]) VALUES (@UserName, @FirstName, @LastName, @Course, @Department, @YearofJoining, @Group, @Gender)"
        SelectCommand="SELECT [UserName], [FirstName], [LastName], [Course], [Department], [YearofJoining], [Group], [Gender] FROM [Members]"
        UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] = @LastName, [Course] = @Course, [Department] = @Department, [YearofJoining] = @YearofJoining, [Group] = @Group, [Gender] = @Gender WHERE [UserName] = @UserName">
        <DeleteParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Course" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="YearofJoining" Type="Int32" />
            <asp:Parameter Name="Group" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Course" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="YearofJoining" Type="Int32" />
            <asp:Parameter Name="Group" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <p>User Information</p>
    <asp:DetailsView ID="dvUserInfo" runat="server" AutoGenerateRows="False" DataKeyNames="UserName"
        DataSourceID="UserInfoDS" DefaultMode="Insert" Height="100%" Width="80%" CellPadding="2">
        <Fields>
            <asp:TemplateField HeaderText="User Name:" SortExpression="UserName">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtUserName" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtUserName"
                        Display="Dynamic" ErrorMessage="You must enter a value for User Name" ValidationGroup="UserInfo">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name:" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="TextBox1"
                        Display="Dynamic" ErrorMessage="You must enter a value for First Name" ValidationGroup="UserInfo">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name:" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="TextBox2"
                        Display="Dynamic" ErrorMessage="You must enter a value for Last Name" ValidationGroup="UserInfo">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender:" SortExpression="Gender">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddGender" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course:" SortExpression="Course">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Course") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddCourse" runat="server" SelectedValue='<%# Bind("Course") %>'>
                        <asp:ListItem>B Tech</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Course") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Department:" SortExpression="Department">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddDepartment" runat="server" SelectedValue='<%# Bind("Department") %>'>
                        <asp:ListItem>--none--</asp:ListItem>
                        <asp:ListItem>CS</asp:ListItem>
                        <asp:ListItem>EE</asp:ListItem>
                        <asp:ListItem>ET</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Year of Joining:" SortExpression="YearofJoining">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("YearofJoining") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("YearofJoining") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="TextBox3"
                        Display="Dynamic" ErrorMessage="You must enter a value for Year of Joining" ValidationGroup="UserInfo">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("YearofJoining") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Group:" SortExpression="Group">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Group") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddGroup" runat="server" SelectedValue='<%# Bind("Group") %>'>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>HOD</asp:ListItem>
                        <asp:ListItem>Faculty</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Group") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" ValidationGroup="UserInfo" >
                <ControlStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Width="100px" Font-Size="1.1em" />
            </asp:CommandField>
        </Fields>
        <FieldHeaderStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" Width="30%" />
    </asp:DetailsView>
    <asp:ValidationSummary ID="vs" runat="server" ValidationGroup="UserInfo" />
</asp:Content>

