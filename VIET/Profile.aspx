<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="Profile.aspx.vb" Inherits="Account" title="VIET - Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="UserName" runat="server" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="ProfileDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT * FROM [Members] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="UserName" Name="UserName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>Profile</p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserName"
        DataSourceID="ProfileDS" Height="100%" Width="100%" CellPadding="3">
        <Fields>
            <asp:BoundField DataField="UserName" HeaderText="User Name: " ReadOnly="True" SortExpression="UserName" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="FirstName" HeaderText="First Name: " SortExpression="FirstName" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="LastName" HeaderText="Last Name: " SortExpression="LastName" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="FatherName" HeaderText="Father's Name: " SortExpression="FatherName" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="DOB" HeaderText="Birth Date: " SortExpression="DOB" DataFormatString="{0:MMMM d, yyyy}" HtmlEncode="False" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address: " SortExpression="Address" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="City" HeaderText="City: " SortExpression="City" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="State" HeaderText="State: " SortExpression="State" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Pincode" HeaderText="Pincode: " SortExpression="Pincode" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Country" HeaderText="Country: " SortExpression="Country" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="ResidancePhone" HeaderText="Residence Phone: " SortExpression="ResidancePhone" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No: " SortExpression="MobileNo" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="EMail" HeaderText="E Mail: " SortExpression="EMail" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Gender" HeaderText="Gender: " SortExpression="Gender" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Course" HeaderText="Course: " SortExpression="Course" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Department" HeaderText="Department: " SortExpression="Department" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="YearofJoining" HeaderText="Year of Joining: " SortExpression="YearofJoining" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Group" HeaderText="Group: " SortExpression="Group" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
        </Fields>
        <FieldHeaderStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" Width="30%" />
    </asp:DetailsView>
</asp:Content>

