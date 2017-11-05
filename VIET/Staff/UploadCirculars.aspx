<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="UploadCirculars.aspx.vb" Inherits="Staff_UploadCirculars" title="VIET - Upload Circulars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="UpCircularDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Circulars] WHERE [CircularId] = @CircularId" InsertCommand="INSERT INTO [Circulars] ([UserId], [Dept], [Subject], [Date], [CircularURL]) VALUES (@UserId, @Dept, @Subject, @Date, @CircularURL)"
        SelectCommand="SELECT * FROM [Circulars]" UpdateCommand="UPDATE [Circulars] SET [UserId] = @UserId, [Dept] = @Dept, [Subject] = @Subject, [Date] = @Date, [CircularURL] = @CircularURL WHERE [CircularId] = @CircularId">
        <DeleteParameters>
            <asp:Parameter Name="CircularId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" />
            <asp:Parameter Name="Dept" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="CircularURL" Type="String" />
            <asp:Parameter Name="CircularId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" />
            <asp:Parameter Name="Dept" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="CircularURL" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="maxCircularIdDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT MAX(CircularId)&#13;&#10;FROM Circulars"></asp:SqlDataSource>
    <asp:Label ID="FileName" runat="server" Visible="False"></asp:Label>
    <p>Upload Circulars</p>
    <asp:DetailsView ID="dvUploadCircular" runat="server" AutoGenerateRows="False" DataKeyNames="CircularId"
        DataSourceID="UpCircularDataSource" DefaultMode="Insert" Width="80%" CellPadding="5" GridLines="None">
        <Fields>
            <asp:TemplateField HeaderText="Department: " SortExpression="Dept">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Dept") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Dept") %>'>
                        <asp:ListItem Selected="True">ALL</asp:ListItem>
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
                    <asp:RequiredFieldValidator ID="rfvTextbox" runat="server" ControlToValidate="TextBox1"
                        Display="Dynamic" ErrorMessage="You must enter a value for Subject" ValidationGroup="InsertCircular">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Subject") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="File Path: ">
                <InsertItemTemplate>
                    <asp:FileUpload ID="CircularUpload" runat="server" /><asp:RequiredFieldValidator
                        ID="rfvCircular" runat="server" ControlToValidate="CircularUpload" Display="Dynamic"
                        ErrorMessage="You must enter a File to Upload" ValidationGroup="InsertCircular">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revExtn" runat="server" ControlToValidate="CircularUpload"
                        Display="Dynamic" ErrorMessage='File only with ".htm" extension can be uploaded'
                        ValidationExpression="^.*([^\.][\.][hH][tT][mM])$" ValidationGroup="InsertCircular">*</asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" InsertText="Upload" ValidationGroup="InsertCircular" >
                <ItemStyle HorizontalAlign="Center" />
                <ControlStyle BackColor="Navy" Font-Bold="True" Font-Size="1.1em" ForeColor="White"
                    Width="100px" />
            </asp:CommandField>
        </Fields>
        <FieldHeaderStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" Width="30%" />
    </asp:DetailsView>
    <asp:ValidationSummary ID="vs" runat="server" ValidationGroup="InsertCircular" />
    <asp:Label ID="FileUploadReport" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

