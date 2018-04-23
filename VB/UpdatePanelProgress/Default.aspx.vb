Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Namespace UpdatePanelProgress
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

		End Sub

		Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
			System.Threading.Thread.Sleep(3000)
		End Sub

		Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs)

		End Sub
	End Class
End Namespace
