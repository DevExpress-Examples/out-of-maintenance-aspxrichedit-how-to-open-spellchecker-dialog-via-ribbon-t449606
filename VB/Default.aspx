<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxRichEdit.v16.1, Version=16.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRichEdit" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v16.1, Version=16.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function onRichEditCustomCommandExecuted(s, e) {
            if(e.commandName = "OpenSpellingDialog") {
                RichEdit.commands.openSpellingDialog.execute();
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxRichEdit ID="RichEdit" runat="server" ClientInstanceName="RichEdit">
            <ClientSideEvents CustomCommandExecuted="onRichEditCustomCommandExecuted" />
            <Settings>
                <SpellChecker Enabled="true" SuggestionCount="4">
                <Dictionaries>
                    <dx:ASPxSpellCheckerISpellDictionary
                        AlphabetPath="EnglishAlphabet.txt"
                        GrammarPath="english.aff"
                        DictionaryPath="american.xlg"
                        Culture="English (United States)"
                        CacheKey="ISpellDic">
                    </dx:ASPxSpellCheckerISpellDictionary>
                </Dictionaries>
            </SpellChecker>
            </Settings>
            <RibbonTabs>
                <dx:RibbonTab Text="Review">
                    <Groups>
                        <dx:RibbonGroup Text="Proofing">
                            <Items>
                                <dx:RibbonButtonItem 
                                    Name="OpenSpellingDialog"
                                    Text="Spelling"
                                    Size="Large"
                                    LargeImage-IconID="format_spellcheck_32x32gray">
                                </dx:RibbonButtonItem>
                            </Items>
                        </dx:RibbonGroup>
                    </Groups>
                </dx:RibbonTab>
            </RibbonTabs>
        </dx:ASPxRichEdit>
    </form>
</body>
</html>