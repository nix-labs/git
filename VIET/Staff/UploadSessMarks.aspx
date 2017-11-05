<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="UploadSessMarks.aspx.vb" Inherits="Staff_UploadSessMarks" title="VIET - Upload Sessional Marks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="UpSessionalDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Sessionals] WHERE [SessionalId] = @SessionalId" InsertCommand="INSERT INTO [Sessionals] ([UserId], [Branch], [Semester], [Section], [Subject], [Date], [SessionalURL]) VALUES (@UserId, @Branch, @Semester, @Section, @Subject, @Date, @SessionalURL)"
        SelectCommand="SELECT * FROM [Sessionals]" UpdateCommand="UPDATE [Sessionals] SET [UserId] = @UserId, [Branch] = @Branch, [Semester] = @Semester, [Section] = @Section, [Subject] = @Subject, [Date] = @Date, [SessionalURL] = @SessionalURL WHERE [SessionalId] = @SessionalId">
        <DeleteParameters>
            <asp:Parameter Name="SessionalId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Semester" Type="Int32" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="SessionalURL" Type="String" />
            <asp:Parameter Name="SessionalId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Semester" Type="Int32" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="SessionalURL" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="maxSessionalIdDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT MAX(SessionalId)&#13;&#10;FROM Sessionals"></asp:SqlDataSource>
    <asp:Label ID="FileName" runat="server" Visible="False"></asp:Label>
    <p>Upload Sessional Marks</p>
    <asp:DetailsView ID="dvUploadSessional" runat="server" AutoGenerateRows="False" DataKeyNames="SessionalId"
        DataSourceID="UpSessionalDataSource" DefaultMode="Insert" Width="80%" CellPadding="5" GridLines="None">
        <Fields>
            <asp:TemplateField HeaderText="Branch: " SortExpression="Branch">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Branch") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Branch") %>'>
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
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Branch") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Semester: " SortExpression="Semester">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Semester") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("Semester") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Semester") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="Section" HeaderText="Section: " SortExpression="Section" >
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="File Path: ">
                <InsertItemTemplate>
                    <asp:FileUpload ID="SessionalUpload" runat="server" />
                    <asp:RequiredFieldValidator ID="rfvSessional" runat="server" ControlToValidate="SessionalUpload"
                        Display="Dynamic" ErrorMessage="You must enter a File to Upload" ValidationGroup="InsertSessional">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revSessional" runat="server" ControlToValidate="SessionalUpload"
                        Display="Dynamic" ErrorMessage='File only with ".htm" extension can be uploaded'
                        ValidationExpression="^.*([^\.][\.][hH][tT][mM])$" ValidationGroup="InsertSessional">*</asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:CommandField InsertText="Upload" ShowInsertButton="True" ValidationGroup="InsertSessional" >
                <ItemStyle HorizontalAlign="Center" />
                <ControlStyle BackColor="Navy" Font-Bold="True" Font-Size="1.1em" ForeColor="White"
                    Width="100px" />
            </asp:CommandField>
        </Fields>
        <FieldHeaderStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" Width="30%" />
    </asp:DetailsView>
    <asp:ValidationSummary ID="vs" runat="server" ValidationGroup="InsertSessional" />
    <asp:Label ID="FileUploadReport" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

