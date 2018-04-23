using DevExpress.Web.Office;
using DevExpress.XtraRichEdit;
using System;

public partial class _Default : System.Web.UI.Page {
    string documentId = "docId";
    protected void Page_Load(object sender, EventArgs e) {
        if(!IsPostBack) {
            RichEditDocumentServer server = new RichEditDocumentServer();
            server.LoadDocument(Server.MapPath("~/SpellChecking.docx"));
            DocumentManager.CloseDocument(documentId);
            RichEdit.Open(documentId, DocumentFormat.OpenXml, () => server.OpenXmlBytes);
        }
    }
}