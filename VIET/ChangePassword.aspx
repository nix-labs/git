<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="ChangePassword" title="VIET - Change Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Change Your Password</p>
    <asp:ChangePassword ID="ChangePassword1" runat="server" CancelDestinationPageUrl="~/Home.aspx" ContinueDestinationPageUrl="~/Home.aspx" ChangePasswordTitleText="">
        <CancelButtonStyle BackColor="Navy" Font-Bold="True" Font-Names="Arial" ForeColor="White" />
        <ChangePasswordButtonStyle BackColor="Navy" Font-Bold="True" Font-Names="Arial" ForeColor="White" />
        <LabelStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" />
        <TitleTextStyle Font-Bold="False" />
    </asp:ChangePassword>
</asp:Content>

