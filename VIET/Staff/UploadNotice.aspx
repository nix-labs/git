<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="UploadNotice.aspx.vb" Inherits="Staff_UploadNotice" title="VIET - Upload Notices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="UpNoticeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Notices] WHERE [NoticeId] = @NoticeId" InsertCommand="INSERT INTO [Notices] ([UserId], [Dept], [Subject], [Date], [NoticeURL]) VALUES (@UserId, @Dept, @Subject, @Date, @NoticeURL)"
        SelectCommand="SELECT * FROM [Notices]" UpdateCommand="UPDATE [Notices] SET [UserId] = @UserId, [Dept] = @Dept, [Subject] = @Subject, [Date] = @Date, [NoticeURL] = @NoticeURL WHERE [NoticeId] = @NoticeId">
        <DeleteParameters>
            <asp:Parameter Name="NoticeId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" />
            <asp:Parameter Name="Dept" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="NoticeURL" Type="String" />
            <asp:Parameter Name="NoticeId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" />
            <asp:Parameter Name="Dept" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="NoticeURL" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="maxNoticeIdDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT MAX(NoticeId)&#13;&#10;FROM Notices"></asp:SqlDataSource>
    <asp:Label ID="FileName" runat="server" Visible="False"></asp:Label>
    <p>Upload Notices</p>
    <asp:DetailsView ID="dvUploadNotice" runat="server" AutoGenerateRows="False" DataKeyNames="NoticeId"
        DataSourceID="UpNoticeDataSource" DefaultMode="Insert" Width="80%" CellPadding="5" GridLines="None">
        <Fields>
            <asp:TemplateField HeaderText="Department: " SortExpression="Dept">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Dept") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DeptDropDown" runat="server" SelectedValue='<%# Bind("Dept") %>'>
                        <asp:ListItem>ALL</asp:ListItem>
                        <asp:ListItem>CS</asp:ListItem>
                        <asp:ListItem>EE</asp:ListItem>
                        <asp:ListItem>ET</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Dept") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Subject: " SortExpression="Subject">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Subject") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Subject") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="TextBox1"
                        Display="Dynamic" ErrorMessage="You must enter a value for Subject" ValidationGroup="NoticeInsert">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Subject") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="File Path: ">
                <InsertItemTemplate>
                    <asp:FileUpload ID="NoticeUpload" runat="server" /><asp:RequiredFieldValidator ID="rfvUpload"
                        runat="server" ControlToValidate="NoticeUpload" Display="Dynamic" ErrorMessage="You must enter a File to Upload"
                        ValidationGroup="NoticeInsert">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revExtn" runat="server" ControlToValidate="NoticeUpload"
                        Display="Dynamic" ErrorMessage='File only with ".htm" extension can be uploaded'
                        ValidationExpression="^.*([^\.][\.][hH][tT][mM])$" ValidationGroup="NoticeInsert">*</asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:CommandField InsertText="Upload" ShowInsertButton="True" ValidationGroup="NoticeInsert" >
                <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                <ControlStyle BackColor="Navy" Font-Bold="True" Font-Size="1.1em" ForeColor="White"
                    Width="100px" />
            </asp:CommandField>
        </Fields>
        <FieldHeaderStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" Width="30%" />
    </asp:DetailsView>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="NoticeInsert" />
    <asp:Label ID="FileUploadReport" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

