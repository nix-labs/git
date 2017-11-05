<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" title="VIET - Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <asp:SqlDataSource ID="SqlDataSourceHome" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT * FROM [Notices] ORDER BY [NoticeId] DESC"></asp:SqlDataSource>
    <p>Home</p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
        DataKeyNames="NoticeId" DataSourceID="SqlDataSourceHome" AllowPaging="True" PageSize="25" Width="100%" CellPadding="2">
        <Columns>
            <asp:BoundField DataField="Dept" HeaderText="Department" SortExpression="Dept" >
                <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="NoticeURL" DataTextField="Subject" HeaderText="Subject" Target="_blank" >
                <ItemStyle Width="60%" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="Date" HeaderText="Posted On" SortExpression="Date" DataFormatString="{0:dddd, MMM d, hh:mm tt}" HtmlEncode="False" >
                <ItemStyle Width="25%" />
            </asp:BoundField>
        </Columns>
        <PagerSettings Position="TopAndBottom"/>
        <RowStyle HorizontalAlign="Center" />
        <HeaderStyle BackColor="Navy" ForeColor="White" Font-Size="1.1em" />
    </asp:GridView>
</asp:Content>

