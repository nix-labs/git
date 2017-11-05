<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="ManageCirculars.aspx.vb" Inherits="Staff_ManageCirculars" title="VIET - Manage Circulars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceMCirculars" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Circulars] WHERE [CircularId] = @CircularId" InsertCommand="INSERT INTO [Circulars] ([UserId], [Dept], [Subject], [Date], [CircularURL]) VALUES (@UserId, @Dept, @Subject, @Date, @CircularURL)"
        SelectCommand="SELECT * FROM [Circulars] ORDER BY [CircularId] DESC" UpdateCommand="UPDATE [Circulars] SET [UserId] = @UserId, [Dept] = @Dept, [Subject] = @Subject, [Date] = @Date, [CircularURL] = @CircularURL WHERE [CircularId] = @CircularId">
        <DeleteParameters>
            <asp:Parameter Name="CircularId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" Type="Object" />
            <asp:Parameter Name="Dept" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="CircularURL" Type="String" />
            <asp:Parameter Name="CircularId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="Object" />
            <asp:Parameter Name="Dept" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="CircularURL" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <p>Manage Circulars</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" DataKeyNames="CircularId"
        DataSourceID="SqlDataSourceMCirculars" PageSize="25"
        Width="100%" CellPadding="2">
        <PagerSettings Position="TopAndBottom" />
        <Columns>
            <asp:BoundField DataField="Dept" HeaderText="Department" SortExpression="Dept">
                <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="CircularURL" DataTextField="Subject" HeaderText="Subject"
                Target="_blank">
                <ItemStyle Width="55%" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="Date" HeaderText="Posted On" SortExpression="Date" DataFormatString="{0:dddd, MMM d, hh:mm tt}" HtmlEncode="False">
                <ItemStyle Width="25%" />
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True">
                <ItemStyle Width="5%" BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:CommandField>
        </Columns>
        <RowStyle HorizontalAlign="Center" />
        <HeaderStyle BackColor="Navy" Font-Size="1.1em" ForeColor="White" />
    </asp:GridView>
</asp:Content>

