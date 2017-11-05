
Partial Class Admin_Administrator
    Inherits System.Web.UI.Page

    Protected Sub CreateUserWizard1_CreatedUser(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.CreatedUser
        Response.Redirect("~/Admin/UserInfo.aspx")
    End Sub
End Class
