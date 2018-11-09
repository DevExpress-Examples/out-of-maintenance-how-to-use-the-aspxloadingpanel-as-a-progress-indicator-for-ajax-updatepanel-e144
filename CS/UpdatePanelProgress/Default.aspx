<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UpdatePanelProgress._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxLoadingPanel" TagPrefix="dxlp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>How to use the ASPxLoadingPanel as a progress indicator for AJAX UpdatePanel</title>


</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />

    <script type="text/javascript">
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_initializeRequest(initializeRequest);
        prm.add_pageLoaded(pageLoaded);

        function initializeRequest(sender, args)
        {
            loadingPanel.ShowInElement(args._postBackElement);
        }

        function pageLoaded(sender, args)
        {
            var panels = args.get_panelsUpdated();
            if (panels.length > 0)
            {
                loadingPanel.Hide();
            }
        }
    </script>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send callback!" />
            </ContentTemplate>
        </asp:UpdatePanel>
        
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send post back!" />
        
        <dxlp:aspxloadingpanel id="ASPxLoadingPanel1" runat="server" clientinstancename="loadingPanel"></dxlp:aspxloadingpanel>
    </div>
    </form>
</body>
</html>
