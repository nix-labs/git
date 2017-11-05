<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="ManageAttendance.aspx.vb" Inherits="Staff_ManageAttendance" title="VIET - Manage Attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceMAttendance" runat="server" ConnectionString="<%$ ConnectionStrings:VIETConnectionString %>"
        DeleteCommand="DELETE FROM [Attendance] WHERE [AttendanceId] = @AttendanceId"
        InsertCommand="INSERT INTO [Attendance] ([UserId], [Branch], [Semester], [Section], [Subject], [Date], [AttendanceURL]) VALUES (@UserId, @Branch, @Semester, @Section, @Subject, @Date, @AttendanceURL)"
        SelectCommand="SELECT * FROM [Attendance] ORDER BY [AttendanceId] DESC" UpdateCommand="UPDATE [Attendance] SET [UserId] = @UserId, [Branch] = @Branch, [Semester] = @Semester, [Section] = @Section, [Subject] = @Subject, [Date] = @Date, [AttendanceURL] = @AttendanceURL WHERE [AttendanceId] = @AttendanceId">
        <DeleteParameters>
            <asp:Parameter Name="AttendanceId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" Type="Object" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Semester" Type="Int32" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="AttendanceURL" Type="String" />
            <asp:Parameter Name="AttendanceId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="Object" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="Semester" Type="Int32" />
            <asp:Parameter Name="Section" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="AttendanceURL" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <p>Manage Attendance</p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
        DataKeyNames="AttendanceId" DataSourceID="SqlDataSourceMAttendance" AllowPaging="True" PageSize="25" Width="100%" CellPadding="2">
        <Columns>
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" >
                <ItemStyle Width="15%" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="AttendanceURL" DataTextField="Subject"
                HeaderText="Subject" Target="_blank" >
                <ItemStyle Width="55%" />
            </asp:HyperLinkField>
            <asp:BoundField DataField="Date" HeaderText="Posted On" SortExpression="Date" DataFormatString="{0:dddd, MMM d, hh:mm tt}" HtmlEncode="False" >
                <ItemStyle Width="25%" />
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" >
                <ItemStyle Width="5%" BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:CommandField>
        </Columns>
        <PagerSettings Position="TopAndBottom" />
        <RowStyle HorizontalAlign="Center" />
        <HeaderStyle BackColor="Navy" Font-Bold="False" Font-Size="1.1em" ForeColor="White" />
    </asp:GridView>
</asp:Content>

