<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="Message.aspx.vb" Inherits="Message" title="VIET - Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="UserName" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:SqlDataSource ID="MessageDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT * FROM [Messages] WHERE ([MessageTo] = @MessageTo) ORDER BY [MessageId] DESC" DeleteCommand="DELETE FROM [Messages] WHERE [MessageId] = @MessageId" InsertCommand="INSERT INTO [Messages] ([MessageTo], [MessageFrom], [Date], [Subject], [Body]) VALUES (@MessageTo, @MessageFrom, @Date, @Subject, @Body)" UpdateCommand="UPDATE [Messages] SET [MessageTo] = @MessageTo, [MessageFrom] = @MessageFrom, [Date] = @Date, [Subject] = @Subject, [Body] = @Body WHERE [MessageId] = @MessageId">
        <SelectParameters>
            <asp:ControlParameter ControlID="UserName" Name="MessageTo" PropertyName="Text" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="MessageId" Type="Int64" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="MessageTo" Type="String" />
            <asp:Parameter Name="MessageFrom" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="MessageId" Type="Int64" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="MessageTo" Type="String" />
            <asp:Parameter Name="MessageFrom" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="MessageDVDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT * FROM [Messages] WHERE ([MessageId] = @MessageId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="gvMessage" Name="MessageId" PropertyName="SelectedValue"
                Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>Messages</p>
    <div align="right"><asp:HyperLink ID="Compose" runat="server" NavigateUrl="~/ComposeMsg.aspx" Target="_self" BackColor="Navy" Font-Bold="True" Font-Size="1.1em" ForeColor="White" Width="100px">Compose</asp:HyperLink></div><br />
    <asp:GridView ID="gvMessage" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" DataKeyNames="MessageId" DataSourceID="MessageDS" CellPadding="2" Width="100%">
        <PagerSettings Position="TopAndBottom" />
        <Columns>
            <asp:CommandField SelectText="View" ShowSelectButton="True" >
                <ItemStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Width="5%" />
            </asp:CommandField>
            <asp:BoundField DataField="MessageFrom" HeaderText="From" SortExpression="MessageFrom" >
                <ItemStyle Width="15%" Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="Subject" HeaderText="Subject" >
                <ItemStyle Width="50%" Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="Date" HeaderText="Sent On" SortExpression="Date" DataFormatString="{0:dddd, MMM d, hh:mm tt}" HtmlEncode="False" >
                <ItemStyle Width="25%" />
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" >
                <ItemStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Width="5%" />
            </asp:CommandField>
        </Columns>
        <SelectedRowStyle BackColor="InactiveCaptionText" />
        <HeaderStyle BackColor="Navy" Font-Size="1.1em" ForeColor="White" />
    </asp:GridView>
    <asp:DetailsView ID="ddMessage" runat="server" AutoGenerateRows="False" DataKeyNames="MessageId"
        DataSourceID="MessageDVDS" Height="100%" Width="100%" CellPadding="2">
        <Fields>
            <asp:BoundField DataField="MessageFrom" HeaderText="From: " SortExpression="MessageFrom" >
                <ItemStyle HorizontalAlign="Left" Font-Bold="True" />
            </asp:BoundField>
            <asp:BoundField DataField="Date" HeaderText="Sent On: " SortExpression="Date" DataFormatString="{0:dddd, MMMM d, hh:mm tt}" HtmlEncode="False" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Subject" HeaderText="Subject: " SortExpression="Subject" >
                <ItemStyle HorizontalAlign="Left" Font-Bold="True" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Body: " SortExpression="Body">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Body") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Body") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtBody" runat="server" Columns="80" ReadOnly="True" Rows="20" Text='<%# Bind("Body") %>'
                        TextMode="MultiLine"></asp:TextBox>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
        </Fields>
        <FieldHeaderStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" Width="20%" />
    </asp:DetailsView>
    
</asp:Content>

