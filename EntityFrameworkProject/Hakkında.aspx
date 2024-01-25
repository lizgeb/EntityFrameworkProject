<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkında.aspx.cs" Inherits="EntityFrameworkProject.Hakkında" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%--  tablo--%>
    <table class="table table-bordered">
        <%--satır--%>
        <tr>
            <%--kalın puntolu sütun--%>
            <th>TC KİMLİKLİK NUMARASI</th>
            <th>AD</th>
            <th>SOYAD</th>
            <th>EGITIM DERECESI</th>
            <th>MEZUNIYET</th>
            <th>DOGUM YERI</th>
            <th>DOGUM TARIHI</th>
            <th>YAS</th>
        </tr>
        <%--   Eval ile veri çekebilmek için --%>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <%-- Bu noktada verilerin gelebilmesi için backEnd kodu yazıldı--%>
                    <td><%#Eval("Pid") %></td>
                    <td><%#Eval("Ad") %></td>
                    <td><%#Eval("Soyad") %></td>
                    <td><%#Eval("EgitimDerecesi") %></td>
                    <td><%#Eval("Mezuniyet") %></td>
                    <td><%#Eval("DogumYeri") %></td>
                    <td><%#Eval("DogumTarihi") %></td>
                    <td><%#Eval("Yas") %></td>

                </tr>

            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="HakkındaEkle.aspx" class="btn btn-info">HAKKINDA BİLGİSİ EKLE</a>
</asp:Content>
