Imports System.Data


Partial Class Staff_UploadCirculars
    Inherits System.Web.UI.Page

    Protected Sub dvUploadCircular_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles dvUploadCircular.ItemInserted
        If e.AffectedRows > 0 Then
            Dim CircularUpload As FileUpload = CType(dvUploadCircular.FindControl("CircularUpload"), FileUpload)
            If CircularUpload.HasFile Then
                Dim baseDirectory As String = Server.MapPath("~/Circulars/")
                CircularUpload.SaveAs(baseDirectory & FileName.Text & ".htm")
                FileUploadReport.Text = "File Uploaded Successfully:<br/> " & CircularUpload.PostedFile.FileName
            End If
        End If
    End Sub

    Protected Sub dvUploadCircular_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertEventArgs) Handles dvUploadCircular.ItemInserting
        e.Values("UserId") = Membership.GetUser().ProviderUserKey
        e.Values("Date") = DateTime.Now
        Dim results As DataView = CType(maxCircularIdDS.Select(DataSourceSelectArguments.Empty), DataView)
        Dim CircularIdJustAdded As Integer = CType(results(0)(0), Integer)
        e.Values("CircularURL") = "~/Circulars/" & CircularIdJustAdded + 1 & ".htm"
        FileName.Text = CircularIdJustAdded + 1
    End Sub
End Class
