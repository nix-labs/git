<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="ComposeMsg.aspx.vb" Inherits="ComposeMsg" title="VIET - Compose Message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="ComposeMsgDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Messages] WHERE [MessageId] = @MessageId" InsertCommand="INSERT INTO [Messages] ([MessageTo], [MessageFrom], [Date], [Subject], [Body]) VALUES (@MessageTo, @MessageFrom, @Date, @Subject, @Body)"
        SelectCommand="SELECT * FROM [Messages]" UpdateCommand="UPDATE [Messages] SET [MessageTo] = @MessageTo, [MessageFrom] = @MessageFrom, [Date] = @Date, [Subject] = @Subject, [Body] = @Body WHERE [MessageId] = @MessageId">
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
    <asp:Label ID="UserName" runat="server" Visible="False"></asp:Label><br />
    <p>Compose Message</p>
    <asp:DetailsView ID="ddComposeMsg" runat="server" Width="100%" AutoGenerateRows="False" DataKeyNames="MessageId" DataSourceID="ComposeMsgDS" DefaultMode="Insert" CellPadding="3">
        <Fields>
            <asp:TemplateField HeaderText="To: " SortExpression="MessageTo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MessageTo") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MessageTo") %>' Columns="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="TextBox1"
                        Display="Dynamic" ErrorMessage="You must enter a value for User Name" ValidationGroup="Compose">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("MessageTo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Subject: " SortExpression="Subject">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Subject") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Subject") %>' Columns="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="TextBox2"
                        Display="Dynamic" ErrorMessage="You must enter a value for Subject" ValidationGroup="Compose">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Subject") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Body: " SortExpression="Body">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Body") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtBody" runat="server" Columns="50" Rows="15" Text='<%# Bind("Body") %>'
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtBody"
                        Display="Dynamic" ErrorMessage="You must enter a value for Body" ValidationGroup="Compose">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Body") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" InsertText="Send" ValidationGroup="Compose" >
                <ControlStyle BackColor="Navy" Font-Bold="True" Font-Size="1.1em" ForeColor="White"
                    Width="100px" />
            </asp:CommandField>
        </Fields>
        <FieldHeaderStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" Width="20%" />
    </asp:DetailsView>
    <asp:ValidationSummary ID="vs" runat="server" ValidationGroup="Compose" />
</asp:Content>

