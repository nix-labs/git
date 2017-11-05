
Partial Class Message
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        UserName.text = User.Identity.Name
    End Sub

End Class
