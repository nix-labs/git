Imports System.Data


Partial Class Staff_UploadNotice
    Inherits System.Web.UI.Page

    Protected Sub dvUploadNotice_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles dvUploadNotice.ItemInserted
        If e.AffectedRows > 0 Then
            Dim NoticeUpload As FileUpload = CType(dvUploadNotice.FindControl("NoticeUpload"), FileUpload)
            If NoticeUpload.HasFile Then
                Dim baseDirectory As String = Server.MapPath("~/Notices/")
                NoticeUpload.SaveAs(baseDirectory & FileName.Text & ".htm")
                FileUploadReport.Text = "File Uploaded Successfully:<br/> " & NoticeUpload.PostedFile.FileName
            End If
        End If
    End Sub

    Protected Sub dvUploadNotice_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertEventArgs) Handles dvUploadNotice.ItemInserting

        e.Values("UserId") = Membership.GetUser().ProviderUserKey
        e.Values("Date") = DateTime.Now
        Dim results As DataView = CType(maxNoticeIdDS.Select(DataSourceSelectArguments.Empty), DataView)
        Dim NoticeIdJustAdded As Integer = CType(results(0)(0), Integer)
        e.Values("NoticeURL") = "~/Notices/" & NoticeIdJustAdded + 1 & ".htm"
        FileName.Text = NoticeIdJustAdded + 1
    End Sub
End Class
