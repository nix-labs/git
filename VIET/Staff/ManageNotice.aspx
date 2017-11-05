<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="ManageNotice.aspx.vb" Inherits="Staff_ManageNotice" title="VIET - Manage Notices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceMNotices" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Notices] WHERE [NoticeId] = @NoticeId" InsertCommand="INSERT INTO [Notices] ([UserId], [Dept], [Subject], [Date], [NoticeURL]) VALUES (@UserId, @Dept, @Subject, @Date, @NoticeURL)"
        SelectCommand="SELECT * FROM [Notices] ORDER BY [NoticeId] DESC" UpdateCommand="UPDATE [Notices] SET [UserId] = @UserId, [Dept] = @Dept, [Subject] = @Subject, [Date] = @Date, [NoticeURL] = @NoticeURL WHERE [NoticeId] = @NoticeId">
        <DeleteParameters>
            <asp:Parameter Name="NoticeId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" Type="Object" />
            <asp:Parameter Name="Dept" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="NoticeURL" Type="String" />
            <asp:Parameter Name="NoticeId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="Object" />
            <asp:Parameter Name="Dept" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="NoticeURL" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <p>Manage Notices</p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
        DataKeyNames="NoticeId" DataSourceID="SqlDataSourceMNotices" AllowPaging="True" PageSize="25" Width="100%" CellPadding="2">
        <Columns>
            <asp:BoundField DataField="Dept" HeaderText="Department" SortExpression="Dept" >
                <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="NoticeURL" DataTextField="Subject" HeaderText="Subject" Target="_blank" >
                <ItemStyle Width="55%" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="Date" HeaderText="Posted On" SortExpression="Date" DataFormatString="{0:dddd, MMM d, hh:mm tt}" HtmlEncode="False" >
                <ItemStyle Width="25%" />
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" >
                <ItemStyle Width="5%" BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:CommandField>
        </Columns>
        <PagerSettings Position="TopAndBottom" />
        <RowStyle HorizontalAlign="Center" />
        <HeaderStyle BackColor="Navy" Font-Bold="False" Font-Size="1.1em" ForeColor="White" />
    </asp:GridView>
</asp:Content>

