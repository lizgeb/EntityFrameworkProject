<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KisiKayıt.aspx.cs" Inherits="EntityFrameworkProject.KisiKayıt" %>

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
            <th>ISLEMLER</th>

        </tr>
        <%--   Eval ile veri çekebilmek için --%>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <%-- Bu noktada verilerin gelebilmesi için backEnd kodu yazıldı--%>
                    <td><%#Eval("Pid") %></td>
                    <td><%#Eval("Ad") %></td>
                    <td><%#Eval("Soyad") %></td>
                    <td>
                        <%--NavigateURL=<%# "/KisiSil.aspx?id="+Eval("id") %> silinecek id değerini kayıt sil sayfasına taşıyabilmesi için eklendi--%>
                        <asp:HyperLink ID="Link1" runat="server" NavigateUrl='<%# "/KisiSil.aspx?id="+Eval("Pid") %>' CssClass="btn btn-danger">SİL</asp:HyperLink>
                        <asp:HyperLink ID="Link2" runat="server" NavigateUrl='<%# "/KisiGüncelle.aspx?id="+Eval("Pid") %>' CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink>
                    </td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>

</asp:Content>
