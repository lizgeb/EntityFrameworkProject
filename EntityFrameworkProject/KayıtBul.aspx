<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KayıtBul.aspx.cs" Inherits="EntityFrameworkProject.KayıtBul" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <asp:Label for="textKimlik" runat="server" Text="TC KIMLIk:" CssClass="label label-danger" Style="font-size: 16px;"></asp:Label>
        <asp:TextBox ID="textKimlik" runat="server" CssClass="form-control" placeholder="Lütfen Tc Kimlik Numarasını Giriniz..."></asp:TextBox>
         
        <br />

       
        <asp:Button ID="Button1" runat="server"  class="btn btn-info" Text="BUL" OnClick="Button1_Click" />

      


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
                <th>MAIL</th>
                <th>TELEFON</th>
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
                        <td><%#Eval("Mail") %></td>
                        <td><%#Eval("Telefon") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </form>
</asp:Content>
