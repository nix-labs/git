<%@ Page Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="Administrator.aspx.vb" Inherits="Admin_Administrator" title="VIET - Create New User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server"
        LoginCreatedUser="False" CellPadding="3">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
        <TitleTextStyle Font-Bold="True" Font-Size="1.8em" ForeColor="Blue" Height="1.8em"
            HorizontalAlign="Center" VerticalAlign="Top" />
        <CreateUserButtonStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Font-Size="1.1em" />
        <TextBoxStyle Width="180px" />
        <LabelStyle Font-Bold="True" Font-Size="1.1em" HorizontalAlign="Right" />
    </asp:CreateUserWizard>
</asp:Content>

