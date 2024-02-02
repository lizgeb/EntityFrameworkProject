<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KisiGüncelle.aspx.cs" Inherits="EntityFrameworkProject.KisiGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server">
        <div class="row">
            <%--Enable=false alınan id değerinin değiştirilememsi için--%>
            <asp:Label for="textKimlik" runat="server" Text="TC KIMLIGINIZ:" CssClass="label label-danger" Style="font-size: 16px;"></asp:Label>
            <asp:TextBox ID="textKimlik" runat="server" CssClass="form-control" placeholder="Lütfen Tc Kimlik Numaranızı Giriniz..." Enabled="false"></asp:TextBox>
            <br />
            <!-- Left side - Education Information -->
            <div class="col-md-6" style="border-right: 3px solid #ccc;">

                <asp:Label for="textEgitim" runat="server" Text="EGITIM DERECENIZ:" CssClass="label label-info" Style="font-size: 16px;"></asp:Label>
                <asp:TextBox ID="textEgitim" runat="server" CssClass="form-control" placeholder="Lütfen Egitim Bilginizi Giriniz..."></asp:TextBox>
                <br />
                <asp:Label for="textMezuniyet" runat="server" Text="MEZUNIYET DURUMUNUZ:" CssClass="label label-info" Style="font-size: 16px;"></asp:Label>
                <asp:TextBox ID="textMezuniyet" runat="server" CssClass="form-control" placeholder="Lütfen Mezuniyet Bilginizi Giriniz..." OnTextChanged="TextSoyad_TextChanged"></asp:TextBox>
                <br />
                <asp:Label for="textDogumYeri" runat="server" Text="DOGUM YERINIZ:" CssClass="label label-info" Style="font-size: 16px;"></asp:Label>
                <asp:TextBox ID="textDogumYeri" runat="server" CssClass="form-control" placeholder="Lütfen Dogum Yerinizi Giriniz..." OnTextChanged="TextSoyad_TextChanged"></asp:TextBox>
                <br />
                <asp:Label for="textDogumTarihi" runat="server" Text="DOGUM TARIHINIZ:" CssClass="label label-info" Style="font-size: 16px;"></asp:Label>
                <asp:TextBox ID="textDogumTarihi" runat="server" CssClass="form-control" placeholder="Lütfen Dogum Tarihinizi Giriniz..." OnTextChanged="TextSoyad_TextChanged"></asp:TextBox>
                <br />
                <asp:Label for="textYas" runat="server" Text="YASINIZ:" CssClass="label label-info" Style="font-size: 16px;"></asp:Label>
                <asp:TextBox ID="textYas" runat="server" CssClass="form-control"  OnTextChanged="TextSoyad_TextChanged"></asp:TextBox>
            </div>

         <%--TBLContact için--%>
            <div class="col-md-6">


                <asp:Label for="textMail" runat="server" Text="EMAIL ADRESINIZ:" CssClass="label label-info" Style="font-size: 16px;"></asp:Label>
                <asp:TextBox ID="textMail" runat="server" CssClass="form-control" placeholder="Lütfen Email Adresinizi Giriniz..."></asp:TextBox>
                <br />
                <asp:Label for="textTelefon" runat="server" Text="TELEFON NUMARANIZ:" CssClass="label label-info" Style="font-size: 16px;"></asp:Label>
                <asp:TextBox ID="textTelefon" runat="server" CssClass="form-control" placeholder="Lütfen Telefon Numaranızı Giriniz..."></asp:TextBox>
            </div>
        </div>

        <br /> <br /> 
        <asp:Button ID="Button1" runat="server" Text="GÜNCELLE" CssClass="btn btn-warning" OnClick="Button1_Click" />
    </form>


</asp:Content>
