<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="Circular.aspx.vb" Inherits="Circular" title="VIET - Circulars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceCircular" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT * FROM [Circulars] ORDER BY [CircularId] DESC"></asp:SqlDataSource>
    <p>Circulars</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" DataKeyNames="CircularId" DataSourceID="SqlDataSourceCircular" PageSize="25" Width="100%" CellPadding="2">
        <PagerSettings Position="TopAndBottom" />
        <Columns>
            <asp:BoundField DataField="Dept" HeaderText="Department" SortExpression="Dept">
                <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="CircularURL" DataTextField="Subject" HeaderText="Subject" Target="_blank" >
                <ItemStyle Width="60%" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="Date" HeaderText="Posted On" SortExpression="Date" DataFormatString="{0:dddd, MMM d, hh:mm tt}" HtmlEncode="False">
                <ItemStyle Width="25%" />
            </asp:BoundField>
        </Columns>
        <RowStyle HorizontalAlign="Center" />
        <HeaderStyle BackColor="Navy" ForeColor="White" Font-Size="1.1em" />
    </asp:GridView>
</asp:Content>

 