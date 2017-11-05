
Partial Class Admin_UserInfo
    Inherits System.Web.UI.Page

    
    Protected Sub dvUserInfo_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles dvUserInfo.ItemInserted
        Dim username As String = CType(dvUserInfo.FindControl("txtUserName"), TextBox).Text
        Dim rolename As String = CType(dvUserInfo.FindControl("ddGroup"), DropDownList).SelectedValue
        Roles.AddUserToRole(username, rolename)
        Response.Redirect("~/Home.aspx")
    End Sub
End Class
