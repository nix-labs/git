
Partial Class MainMasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub btnGoogle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGoogle.Click
        Response.Redirect("http://www.google.com/search?q=" & txtGoogle.Text)
    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblDate.Text = Format(Today(), "ddd, MMMM d, yyyy")
        UserName.Text = Context.User.Identity.Name.ToUpper
        lblOnlineUsers.Text = Membership.GetNumberOfUsersOnline().ToString()
    End Sub
End Class