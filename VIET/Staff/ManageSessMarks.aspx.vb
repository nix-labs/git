Imports System.IO
Partial Class Staff_ManageSessMarks
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeletedEventArgs) Handles GridView1.RowDeleted
        Dim baseDirectory As String = Server.MapPath("~/Sess_Marks/")
        Dim fileName As String = baseDirectory & e.Keys("SessionalId") & ".htm"
        File.Delete(fileName)
    End Sub
End Class
