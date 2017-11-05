<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="Sessional.aspx.vb" Inherits="Sessional" title="VIET - Sessional Marks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceSessional" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT * FROM [Sessionals] ORDER BY [SessionalId] DESC"></asp:SqlDataSource>
   
    <p>Sessional Marks</p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
        DataKeyNames="SessionalId" DataSourceID="SqlDataSourceSessional" AllowPaging="True" PageSize="25" Width="100%" CellPadding="2">
        <Columns>
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" >
                <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="SessionalURL" DataTextField="Subject"
                HeaderText="Subject" Target="_blank" >
                <ItemStyle Width="60%" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="Date" HeaderText="Posted On" SortExpression="Date" DataFormatString="{0:dddd, MMM d, hh:mm tt}" HtmlEncode="False" >
                <ItemStyle Width="25%" />
            </asp:BoundField>
        </Columns>
        <PagerSettings Position="TopAndBottom" />
        <RowStyle HorizontalAlign="Center" />
        <HeaderStyle BackColor="Navy" ForeColor="White" Font-Size="1.1em" />
    </asp:GridView>
</asp:Content>

