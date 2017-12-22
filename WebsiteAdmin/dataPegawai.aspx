<%@ Page Title="" Language="VB" MasterPageFile="~/WebsiteAdmin/Template.master" AutoEventWireup="false" CodeFile="dataPegawai.aspx.vb" Inherits="WebsiteAdmin_dataPegawai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="nip" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="nip" HeaderText="NIP" ReadOnly="True" 
                SortExpression="nip" />
            <asp:BoundField DataField="nama_pegawai" HeaderText="Nama Pegawai" 
                SortExpression="nama_pegawai" />
            <asp:BoundField DataField="tanggal_masuk" HeaderText="Tanggal Masuk" 
                SortExpression="tanggal_masuk" />
            <asp:BoundField DataField="gaji" HeaderText="Gaji" SortExpression="gaji" />
            <asp:BoundField DataField="kode_dept" HeaderText="Kode Departement" 
                SortExpression="kode_dept" />
            <asp:BoundField DataField="nama_dept" HeaderText="Nama Departement" 
                SortExpression="nama_dept" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT pegawai.*, departemen.nama_dept FROM pegawai INNER JOIN departemen ON pegawai.kode_dept = departemen.kode_dept">
</asp:SqlDataSource>
</asp:Content>

