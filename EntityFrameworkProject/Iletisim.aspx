<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="EntityFrameworkProject.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <%--tablo--%>
    <table class="table table-bordered">
        <%--satır--%>
        <tr>
            <%--kalın puntolu sütun--%>
            <th>TC KİMLİKLİK NUMARASI</th>
            <th>AD</th>
            <th>SOYAD</th>
            <th>MAIL</th>
            <th>TELEFON</th>

        </tr>
        <%--Eval ile veri çekebilmek için--%>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <%--Bu noktada verilerin gelebilmesi için backEnd kodu yazıldı--%>
                    <td><%#Eval("Pid") %></td>
                    <td><%#Eval("Ad") %></td>
                    <td><%#Eval("Soyad") %></td>
                    <td><%#Eval("Mail") %></td>
                    <td><%#Eval("Telefon") %></td>



                </tr>

            </ItemTemplate>
        </asp:Repeater>

    </table>
   
</asp:Content>
