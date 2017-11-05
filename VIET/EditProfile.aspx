<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="EditProfile.aspx.vb" Inherits="EditProfile" title="VIET - Edit Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="UserName" runat="server" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="EditProfileDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Members] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [Members] ([UserName], [FirstName], [LastName], [FatherName], [DOB], [Address], [City], [State], [Pincode], [Country], [ResidancePhone], [MobileNo], [EMail], [Gender], [Course], [Department], [YearofJoining], [Group]) VALUES (@UserName, @FirstName, @LastName, @FatherName, @DOB, @Address, @City, @State, @Pincode, @Country, @ResidancePhone, @MobileNo, @EMail, @Gender, @Course, @Department, @YearofJoining, @Group)"
        SelectCommand="SELECT * FROM [Members] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [Members] SET [FirstName] = @FirstName, [LastName] = @LastName, [FatherName] = @FatherName, [DOB] = @DOB, [Address] = @Address, [City] = @City, [State] = @State, [Pincode] = @Pincode, [Country] = @Country, [ResidancePhone] = @ResidancePhone, [MobileNo] = @MobileNo, [EMail] = @EMail, [Gender] = @Gender, [Course] = @Course, [Department] = @Department, [YearofJoining] = @YearofJoining, [Group] = @Group WHERE [UserName] = @UserName">
        <DeleteParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="FatherName" Type="String" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Pincode" Type="Int32" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="ResidancePhone" Type="Int32" />
            <asp:Parameter Name="MobileNo" Type="Int64" />
            <asp:Parameter Name="EMail" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Course" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="YearofJoining" Type="Int32" />
            <asp:Parameter Name="Group" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </UpdateParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="UserName" Name="UserName" PropertyName="Text" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="FatherName" Type="String" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Pincode" Type="Int32" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="ResidancePhone" Type="Int32" />
            <asp:Parameter Name="MobileNo" Type="Int64" />
            <asp:Parameter Name="EMail" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Course" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="YearofJoining" Type="Int32" />
            <asp:Parameter Name="Group" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <p>Edit Profile</p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserName"
        DataSourceID="EditProfileDS" DefaultMode="Edit" Height="100%" Width="80%" CellPadding="3">
        <Fields>
            <asp:BoundField DataField="UserName" HeaderText="User Name: " ReadOnly="True" SortExpression="UserName" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="First Name: " SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:Label ID="lblFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>&nbsp;
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name: " SortExpression="LastName">
                <EditItemTemplate>
                    <asp:Label ID="lblLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Father's Name: " SortExpression="FatherName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FatherName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("FatherName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ControlStyle Width="150px" />
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("FatherName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Birth Date: " SortExpression="DOB">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("DOB") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="150px" />
            </asp:TemplateField>
            <asp:BoundField DataField="Address" HeaderText="Address: " SortExpression="Address" >
                <ItemStyle HorizontalAlign="Left" />
                <ControlStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="City" HeaderText="City: " SortExpression="City" >
                <ItemStyle HorizontalAlign="Left" />
                <ControlStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="State" HeaderText="State: " SortExpression="State" >
                <ItemStyle HorizontalAlign="Left" />
                <ControlStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="Pincode" HeaderText="Pincode: " SortExpression="Pincode" >
                <ItemStyle HorizontalAlign="Left" />
                <ControlStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="Country" HeaderText="Country: " SortExpression="Country" >
                <ItemStyle HorizontalAlign="Left" />
                <ControlStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="ResidancePhone" HeaderText="Residence Phone: " SortExpression="ResidancePhone" >
                <ItemStyle HorizontalAlign="Left" />
                <ControlStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No: " SortExpression="MobileNo" >
                <ItemStyle HorizontalAlign="Left" />
                <ControlStyle Width="150px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="E Mail: " SortExpression="EMail">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EMail") %>'></asp:TextBox>
                    <asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="TextBox2"
                        Display="Dynamic" ErrorMessage="You must enter a valid E Mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ValidationGroup="EditProfile">*</asp:RegularExpressionValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("EMail") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("EMail") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="150px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender: " SortExpression="Gender">
                <EditItemTemplate>
                    <asp:Label ID="lblGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course: " SortExpression="Course">
                <EditItemTemplate>
                    <asp:Label ID="lblCourse" runat="server" Text='<%# Bind("Course") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Course") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Course") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Department: " SortExpression="Department">
                <EditItemTemplate>
                    <asp:Label ID="lblDept" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Year of Joining: " SortExpression="YearofJoining">
                <EditItemTemplate>
                    <asp:Label ID="lblYearofJoining" runat="server" Text='<%# Bind("YearofJoining") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("YearofJoining") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("YearofJoining") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Group: " SortExpression="Group">
                <EditItemTemplate>
                    <asp:Label ID="lblGroup" runat="server" Text='<%# Bind("Group") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Group") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Group") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" ValidationGroup="EditProfile">
            <ControlStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Width="100px" Font-Size="1.1em" />
                    </asp:CommandField>
        </Fields>
        <FieldHeaderStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" Width="30%" />
    </asp:DetailsView>
    <asp:ValidationSummary ID="vs" runat="server" ValidationGroup="EditProfile" />
</asp:Content>