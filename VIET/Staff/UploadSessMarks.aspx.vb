Imports System.Data


Partial Class Staff_UploadSessMarks
    Inherits System.Web.UI.Page

    Protected Sub dvUploadSessional_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles dvUploadSessional.ItemInserted
        If e.AffectedRows > 0 Then
            Dim SessionalUpload As FileUpload = CType(dvUploadSessional.FindControl("SessionalUpload"), FileUpload)
            If SessionalUpload.HasFile Then
                Dim baseDirectory As String = Server.MapPath("~/Sess_Marks/")
                SessionalUpload.SaveAs(baseDirectory & FileName.Text & ".htm")
                FileUploadReport.Text = "File Uploaded Successfully:<br/> " & SessionalUpload.PostedFile.FileName
            End If
        End If
    End Sub

    Protected Sub dvUploadSessional_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertEventArgs) Handles dvUploadSessional.ItemInserting
        e.Values("UserId") = Membership.GetUser().ProviderUserKey
        e.Values("Date") = DateTime.Now
        Dim results As DataView = CType(maxSessionalIdDS.Select(DataSourceSelectArguments.Empty), DataView)
        Dim SessionalIdJustAdded As Integer = CType(results(0)(0), Integer)
        e.Values("SessionalURL") = "~/Sess_Marks/" & SessionalIdJustAdded + 1 & ".htm"
        FileName.Text = SessionalIdJustAdded + 1
        e.Values("Subject") = e.Values("Branch") & " Sem " & e.Values("Semester") & " Sec - " & e.Values("Section")
    End Sub
End Class
