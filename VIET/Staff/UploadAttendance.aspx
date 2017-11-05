<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="UploadAttendance.aspx.vb" Inherits="Staff_UploadAttendance" title="VIET - Upload Attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="UpAttendanceDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Attendance] WHERE [AttendanceId] = @AttendanceId"
        InsertCommand="INSERT INTO [Attendance] ([UserId], [Branch], [Semester], [Section], [Subject], [Date], [AttendanceURL]) VALUES (@UserId, @Branch, @Semester, @Section, @Subject, @Date, @AttendanceURL)"
        SelectCommand="SELECT * FROM [Attendance]" UpdateCommand="UPDATE [Attendance] SET [UserId] = @UserId, [Branch] = @Branch, [Semester] = @Semester, [Section] = @Section, [Subject] = @Subject, [Date] = @Date, [AttendanceURL] = @AttendanceURL WHERE [AttendanceId] = @AttendanceId">
        <DeleteParameters>
            <asp:Parameter Name="AttendanceId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Semester" Type="Int32" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="AttendanceURL" Type="String" />
            <asp:Parameter Name="AttendanceId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Semester" Type="Int32" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="AttendanceURL" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="maxAttendanceIdDS" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        SelectCommand="SELECT MAX(AttendanceId)&#13;&#10;FROM Attendance"></asp:SqlDataSource>
    <asp:Label ID="FileName" runat="server" Visible="False"></asp:Label>
    <p>Upload Attendance</p>
    <asp:DetailsView ID="dvUploadAttendance" runat="server" AutoGenerateRows="False"
        DataKeyNames="AttendanceId" DataSourceID="UpAttendanceDataSource" DefaultMode="Insert" Width="80%" CellPadding="5" GridLines="None">
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
                    <asp:FileUpload ID="AttendanceUpload" runat="server" />
                    <asp:RequiredFieldValidator ID="rfvAttendance" runat="server" ControlToValidate="AttendanceUpload"
                        Display="Dynamic" ErrorMessage="You must enter a File to Upload" ValidationGroup="InsertAttendance">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revExtn" runat="server" ControlToValidate="AttendanceUpload"
                        Display="Dynamic" ErrorMessage='File only with ".htm" extension can be uploaded'
                        ValidationExpression="^.*([^\.][\.][hH][tT][mM])$" ValidationGroup="InsertAttendance">*</asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:CommandField InsertText="Upload" ShowInsertButton="True" ValidationGroup="InsertAttendance" >
                <ItemStyle HorizontalAlign="Center" />
                <ControlStyle BackColor="Navy" Font-Bold="True" Font-Size="1.1em" ForeColor="White"
                    Width="100px" />
            </asp:CommandField>
        </Fields>
        <EmptyDataRowStyle Font-Bold="False" />
        <FieldHeaderStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" Width="30%" />
    </asp:DetailsView>
    <asp:ValidationSummary ID="vs" runat="server" ValidationGroup="InsertAttendance" />
    <asp:Label ID="FileUploadReport" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

