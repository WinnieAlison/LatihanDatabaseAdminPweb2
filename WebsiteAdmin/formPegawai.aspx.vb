
Partial Class WebsiteAdmin_formPegawai
    Inherits System.Web.UI.Page

    Protected Sub btnDaftar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDaftar.Click
        SqlDataSource2.Insert()
        Server.Transfer("../WebsiteAdmin/dataPegawai.aspx", True)
    End Sub

    Protected Sub btnBatal_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBatal.Click
        txtNip.Text = ""
        txtNama.Text = ""
        calTglMasuk.SelectedDate = ""
        txtGaji.Text = ""
        DropDownList1.SelectedValue = ""
    End Sub
End Class
