using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntityFrameworkProject.Entity;
using static System.Net.Mime.MediaTypeNames;

namespace EntityFrameworkProject
{
    public partial class KisiGüncelle : System.Web.UI.Page
    {
        ENTITYFRAMEWORKDBEntities db = new ENTITYFRAMEWORKDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int pid = Convert.ToInt32(Request.QueryString["id"]);
            textKimlik.Text = pid.ToString();
        }

        protected void TextSoyad_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            // Pid sütununda arama yaparak kaydı bulur
            TBLAboutt update = db.TBLAboutt.FirstOrDefault(item => item.Pid == id);

            int Pid = int.Parse(textKimlik.Text);
            if (update != null)
            {
                //Eğer atanan Pid değerinde zaten kayıt varsa güncelleme işlemlerini yapar
                update.EgitimDerecesi = textEgitim.Text;
                update.Mezuniyet = textMezuniyet.Text;
                update.DogumYeri = textDogumYeri.Text;
                update.DogumTarihi = Convert.ToDateTime(textDogumTarihi.Text);
                update.Yas = Convert.ToInt32(textYas.Text);

                // Değişiklikleri kaydeder
                db.SaveChanges();


                string script = "alert('Kayıt başarıyla Güncellendi.'); window.location='KisiKayıt.aspx';";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else
            {
                //Hakkında tablosunda gelen Pid için hiçbir kayıt bulunmuyorsa
                TBLAboutt AboutAdd = new TBLAboutt();

                AboutAdd.Pid = Pid;
                AboutAdd.EgitimDerecesi = textEgitim.Text;
                AboutAdd.Mezuniyet = textMezuniyet.Text;
                AboutAdd.DogumYeri = textDogumYeri.Text;
                AboutAdd.DogumTarihi = Convert.ToDateTime(textDogumTarihi.Text);

                db.TBLAboutt.Add(AboutAdd);
                db.SaveChanges();

                
                string script = "alert('Yeni kayıt başarıyla eklendi.'); window.location='KisiKayıt.aspx';";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }

            //Contact Tablosu için 

            TBLContact updateContact = db.TBLContact.FirstOrDefault(item => item.Pid == id);

            if (updateContact != null)
            {

                updateContact.Pid = Pid;
                updateContact.Mail = textMail.Text;
                updateContact.Telefon = textTelefon.Text;
                db.SaveChanges();

                string script = "alert('Kayıt başarıyla Güncellendi.'); window.location='KisiKayıt.aspx';";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
            else
            {
                TBLContact ContactAdd = new TBLContact();

                ContactAdd.Pid = Pid;
                ContactAdd.Mail = textMail.Text;
                ContactAdd.Telefon = textTelefon.Text;


                db.TBLContact.Add(ContactAdd);
                db.SaveChanges();


                string script = "alert('Yeni kayıt başarıyla eklendi.'); window.location='KisiKayıt.aspx';";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }

    }
}
