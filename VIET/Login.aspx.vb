
Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblDate.Text = Format(Today(), "dddd, MMMM d, yyyy")
        lblOnlineUsers.Text = Membership.GetNumberOfUsersOnline().ToString()
    End Sub
    Protected Sub btnGoogle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGoogle.Click
        Response.Redirect("http://www.google.com/search?q=" & txtGoogle.Text)
    End Sub
End Class
