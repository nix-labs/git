Imports System.Data

Partial Class Staff_UploadAttendance
    Inherits System.Web.UI.Page

    Protected Sub dvUploadAttendance_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles dvUploadAttendance.ItemInserted
        If e.AffectedRows > 0 Then
            Dim AttendanceUpload As FileUpload = CType(dvUploadAttendance.FindControl("AttendanceUpload"), FileUpload)
            If AttendanceUpload.HasFile Then
                Dim baseDirectory As String = Server.MapPath("~/Attendance/")
                AttendanceUpload.SaveAs(baseDirectory & FileName.Text & ".htm")
                FileUploadReport.Text = "File Uploaded Successfully:<br/> " & AttendanceUpload.PostedFile.FileName
            End If
        End If
    End Sub

    Protected Sub dvUploadAttendance_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertEventArgs) Handles dvUploadAttendance.ItemInserting
        e.Values("UserId") = Membership.GetUser().ProviderUserKey
        e.Values("Date") = DateTime.Now
        Dim results As DataView = CType(maxAttendanceIdDS.Select(DataSourceSelectArguments.Empty), DataView)
        Dim AttendanceIdJustAdded As Integer = CType(results(0)(0), Integer)
        e.Values("AttendanceURL") = "~/Attendance/" & AttendanceIdJustAdded + 1 & ".htm"
        FileName.Text = AttendanceIdJustAdded + 1
        e.Values("Subject") = e.Values("Branch") & " Sem " & e.Values("Semester") & " Sec - " & e.Values("Section")
    End Sub
End Class
