Imports DevExpress.Web.Office
Imports DevExpress.XtraRichEdit
Imports System

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Private documentId As String = "docId"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If Not IsPostBack Then

            Dim server_Renamed As New RichEditDocumentServer()
            server_Renamed.LoadDocument(Server.MapPath("~/SpellChecking.docx"))
            DocumentManager.CloseDocument(documentId)
            RichEdit.Open(documentId, DocumentFormat.OpenXml, Function() server_Renamed.OpenXmlBytes)
        End If
    End Sub
End Class