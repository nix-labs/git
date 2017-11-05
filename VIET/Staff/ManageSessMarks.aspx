<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="ManageSessMarks.aspx.vb" Inherits="Staff_ManageSessMarks" title="VIET - Manage Sessional Marks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceMSessionals" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Sessionals] WHERE [SessionalId] = @SessionalId" InsertCommand="INSERT INTO [Sessionals] ([UserId], [Branch], [Semester], [Section], [Subject], [Date], [SessionalURL]) VALUES (@UserId, @Branch, @Semester, @Section, @Subject, @Date, @SessionalURL)"
        SelectCommand="SELECT * FROM [Sessionals] ORDER BY [SessionalId] DESC" UpdateCommand="UPDATE [Sessionals] SET [UserId] = @UserId, [Branch] = @Branch, [Semester] = @Semester, [Section] = @Section, [Subject] = @Subject, [Date] = @Date, [SessionalURL] = @SessionalURL WHERE [SessionalId] = @SessionalId">
        <DeleteParameters>
            <asp:Parameter Name="SessionalId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" Type="Object" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Semester" Type="Int32" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="SessionalURL" Type="String" />
            <asp:Parameter Name="SessionalId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="Object" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Semester" Type="Int32" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="SessionalURL" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <p>Manage Sessional Marks</p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
        DataKeyNames="SessionalId" DataSourceID="SqlDataSourceMSessionals" AllowPaging="True" PageSize="25" Width="100%" CellPadding="2">
        <Columns>
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" >
                <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="SessionalURL" DataTextField="Subject"
                HeaderText="Subject" Target="_blank" >
                <ItemStyle Width="55%" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="Date" HeaderText="Posted On" SortExpression="Date" DataFormatString="{0:dddd, MMM d, hh:mm tt}" HtmlEncode="False" >
                <ItemStyle Width="25%" />
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" >
                <ItemStyle Width="5%" BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:CommandField>
        </Columns>
        <PagerSettings Position="TopAndBottom" />
        <RowStyle HorizontalAlign="Center" />
        <HeaderStyle BackColor="Navy" Font-Size="1.1em" ForeColor="White" />
    </asp:GridView>
</asp:Content>

