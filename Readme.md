<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128545475/16.1.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T449606)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxRichEdit - How to open SpellChecker dialog via Ribbon
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t449606/)**
<!-- run online end -->


<p><a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.ASPxRichEdit.class">ASPxRichEdit</a> provides built-in <a href="https://documentation.devexpress.com/AspNet/116404/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Spell-Checking">spell checking support</a>, including the type-as-you-go error detection. End-users can correct a misspelled word in the <strong>Spelling</strong> dialog. It can be opened using the corresponding context menu's item when a cursor is over the misspelled word. This dialog allows a user to select spelling suggestions (they are also displayed in the context menu), change or ignore the error once or in all cases, and add a new word to the dictionary. You can also invoke the <strong>Spelling</strong> dialog using the client-side <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.RichEditCommands.openSpellingDialog.property">openSpellingDialog</a> command. </p>
<p>In this example, <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.ASPxRichEdit.class">ASPxRichEdit</a> includes a custom ribbon button: clicks on this item are processed using the client-side <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.ASPxClientRichEdit.CustomCommandExecuted.event">CustomCommandExecuted</a> event. The event handler identifies the custom item via a command name and executes the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.RichEditCommands.openSpellingDialog.property">openSpellingDialog</a> command.</p>

<br/>


