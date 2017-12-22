<%@ Page Title="" Language="VB" MasterPageFile="~/WebsiteAdmin/Template.master" AutoEventWireup="false"
    CodeFile="formPegawai.aspx.vb" Inherits="WebsiteAdmin_formPegawai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 12px;
        }
        .style4
        {
            width: 154px;
        }
        .style5
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style1">
        <tr>
            <td class="style4">NIP</td>
            <td class="style3">:</td>
            <td>
                <asp:TextBox ID="txtNip" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*nip harus diisi" ControlToValidate="txtNip" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">Nama</td>
            <td class="style3">:</td>
            <td>
                <asp:TextBox ID="txtNama" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ErrorMessage="*nama harus diisi"
                    ControlToValidate="txtNama" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">Tanggal Masuk</td>
            <td class="style3">:</td>
            <td>
                <asp:Calendar ID="calTglMasuk" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style4">Gaji</td>
            <td class="style3">:</td>
            <td>
                Rp
                <asp:TextBox ID="txtGaji" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4" runat="server" ErrorMessage="*gaji harus diisi"
                    ControlToValidate="txtGaji" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">Kode Departement</td>
            <td class="style3">:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="kode_dept" 
                    DataValueField="kode_dept">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [departemen] WHERE [kode_dept] = @kode_dept" 
                    InsertCommand="INSERT INTO [departemen] ([kode_dept]) VALUES (@kode_dept)" 
                    SelectCommand="SELECT [kode_dept] FROM [departemen]">
                    <DeleteParameters>
                        <asp:Parameter Name="kode_dept" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="kode_dept" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style5">
            </td>
            <td class="style5">
                <asp:Button ID="btnDaftar" runat="server" Text="Daftar" />
                <asp:Button ID="btnBatal" runat="server" Text="Batal" />
                  <asp:Label ID="sukses" runat="server" Text=""></asp:Label>
                <br />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [pegawai] WHERE [nip] = @nip" 
        InsertCommand="INSERT INTO [pegawai] ([nip], [nama_pegawai], [tanggal_masuk], [gaji], [kode_dept]) VALUES (@nip, @nama_pegawai, @tanggal_masuk, @gaji, @kode_dept)" 
        SelectCommand="SELECT * FROM [pegawai]" 
        UpdateCommand="UPDATE [pegawai] SET [nama_pegawai] = @nama_pegawai, [tanggal_masuk] = @tanggal_masuk, [gaji] = @gaji, [kode_dept] = @kode_dept WHERE [nip] = @nip">
        <DeleteParameters>
            <asp:Parameter Name="nip" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtNip" Name="nip" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtNama" Name="nama_pegawai" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="calTglMasuk" DbType="Date" 
                Name="tanggal_masuk" PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="txtGaji" Name="gaji" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="kode_dept" 
                PropertyName="SelectedValue" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nama_pegawai" Type="String" />
            <asp:Parameter DbType="Date" Name="tanggal_masuk" />
            <asp:Parameter Name="gaji" Type="String" />
            <asp:Parameter Name="kode_dept" Type="Int32" />
            <asp:Parameter Name="nip" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
