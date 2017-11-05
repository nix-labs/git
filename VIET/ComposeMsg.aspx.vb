
Partial Class ComposeMsg
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        UserName.text = User.Identity.Name

    End Sub

    Protected Sub ddComposeMsg_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertEventArgs) Handles ddComposeMsg.ItemInserting
        e.Values("MessageFrom") = User.Identity.Name
        e.Values("Date") = DateTime.Now
    End Sub
End Class
