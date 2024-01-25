<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KisiEkle.aspx.cs" Inherits="EntityFrameworkProject.KisiEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div>
            <div class="alert alert-warning">
                <strong>Warning!</strong> Tc Kimlik Bilgisi Zorunlu Alandır. Girmeyi Unutmayınız! 
            </div>
            <asp:Label for="textKimlik" runat="server" Text="TC KIMLIGINIZ:" span class="label label-danger" Style="font-size: 16px;"></asp:Label>
            <asp:TextBox ID="textKimlik" runat="server" CssClass="form-control" placeholder="Lütfen Tc Kimlik Numaranızı Giriniz..."></asp:TextBox>
            <br />
            <asp:Label for="textAd" runat="server" Text="ADINIZ:" span class="label label-danger" Style="font-size: 16px;"></asp:Label>
            <asp:TextBox ID="textAd" runat="server" CssClass="form-control" placeholder="Lütfen Adınızı Giriniz..."></asp:TextBox>
            <br />
            <asp:Label for="textSoyad" runat="server" Text="SOYADINIZ:" span class="label label-danger" Style="font-size: 16px;"></asp:Label>
            <asp:TextBox ID="TextSoyad" runat="server" CssClass="form-control" placeholder="Lütfen Soyadınızı Giriniz..."></asp:TextBox>
            <br />
            <asp:Button ID="BtnAdd" runat="server" Text="EKLE" CssClass="btn btn-success" OnClick="BtnAdd_Click" />
        </div>
    </form>
</asp:Content>
