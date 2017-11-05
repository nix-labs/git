<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>VIET - Login</title>
    <link id="Link1" rel="stylesheet" type="text/css" href="Site.css" runat="server" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%">
            <tr>
                <td width="785"><div id="header"></div></td>
                    <td>
                        <div id="google">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td align="center"><asp:Label ID="lblDate" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <asp:Image ID="Image1" runat="server" AlternateText="Google" ImageUrl="~/Images/Logo_25wht.gif" Height="23px" ImageAlign="AbsMiddle" />
                                        <asp:TextBox ID="txtGoogle" runat="server" Columns="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rev1" runat="server" ControlToValidate="txtGoogle"
                                            Display="Dynamic" ValidationGroup="Google">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center"><asp:Button ID="btnGoogle" runat="server" Text="Search" BackColor="Navy" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial" Font-Overline="False" ForeColor="White" ValidationGroup="Google"/></td>
                                </tr>
                                
                            </table>
                        </div>
                    </td>
               </tr>
        </table>
        <table border="0" cellpadding="5" cellspacing="0" width="100%" height="85%">
            <tr>
                <td width="20%" valign=top bgcolor=navy><div id="sidebar">
                    <div>
                        <asp:Label ID="lblUserName" runat="server" Text="Welcome: "></asp:Label>
                        <asp:Label ID="UserName" runat="server">Guest</asp:Label>
                    </div>
                    <br /><br />
                    <div id="login"><asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Home.aspx" BorderColor="Navy" BorderStyle="Ridge" RememberMeText="Remember me" UserNameLabelText="UserName:" VisibleWhenLoggedIn="False">
                        <TitleTextStyle Font-Bold="True" />
                        <TextBoxStyle Width="100px" />
                        <LoginButtonStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                        <LabelStyle Wrap="False" />
                    </asp:Login>
                    <br /><br />
                    <div>
                        <asp:Label ID="lblUsers" runat="server" Text="No of Users Online: "></asp:Label>
                        <asp:Label ID="lblOnlineUsers" runat="server"></asp:Label>
                    </div>
                </div></td>
                <td width="75%" align="center" valign="top">
                    <div><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/college.jpg" AlternateText="VIET" BorderColor="Navy" BorderStyle="Solid" BorderWidth="5px" /></div><br />
                    <div align="justify">
                        &nbsp; &nbsp; &nbsp; Education, value loaded and value driven which helps the students with raw, undiscovered
                        talents to develop into an effective, complete professional who not only becomes
                        a success in life but also contributes significantly to the betterment of his envisions,
                        his society. with the change of government policy towards Industrialization and
                        Technical Education, the demand of qualified and trained engineers has increased
                        tremendously. To meet out this increasing demand of trained manpower we have to
                        have a large number of engineering institution with updated infrastructure facilities
                        and competent well trained technocrats. With this aim in mind, Vishveshwarya Institutes
                        Of Engineering And Technology and Medical Sciences has been established.<br />
                        &nbsp; &nbsp; &nbsp;
                        VISHVESHWARYA INSTITUTES is the culmination of pioneering groundwork of top industrialists who
                        wanted to setup a world class institution that would create a pool of brainpower
                        consisting of Engineers, Computer and Management Professionals, Pharmacists and
                        other Para medical technologist who are trained and well tuned to meet the present
                        day globalized requirements of business industry, including health care. The concept
                        of the educationist and industrialist who conceived this institute, have turned
                        in the reality in the form of prestigious campus sprawling over 65 acres of green
                        land on the outskirts of Ghaziabad, right in the midst of the fast developing National
                        Capital Region. The dream of founding fathers of this institute has finally taken
                        a concrete shape owning to an extremely robust infrastructure, and a committed and
                        dedicated teaching faculty. The teachers excel in their fields of specialization
                        and also act as mentors and guides to the students who discover and develop their
                        inherent talents and strengths. A unique feature of the institute is its huge covered
                        hall around which the labs and classrooms are placed. The covered hall is fully
                        equipped for meetings, co-and extra-curicular activities involving even thousands
                        participants under all kinds of weather and times. The institute has an exclusive
                        Library complex along with well-equipped Cyber-Net Lab. The institute is proud of
                        its collection of books.</div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
