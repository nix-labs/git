
Partial Class Logout
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session.Abandon()
        FormsAuthentication.SignOut()
        'Request.Cookies.Clear()
        'Response.Cookies.Clear()

        Response.Redirect("Login.aspx")
    End Sub

End Class
