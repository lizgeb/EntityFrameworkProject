using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntityFrameworkProject.Entity;

namespace EntityFrameworkProject
{

    public partial class KisiEkle : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            ENTITYFRAMEWORKDBEntities db = new ENTITYFRAMEWORKDBEntities();
            TBLPerson pAdd = new TBLPerson();
            int Pid = int.Parse(textKimlik.Text);
            pAdd.Pid = Pid;
            pAdd.Ad = textAd.Text;
            pAdd.Soyad = TextSoyad.Text;
            db.TBLPerson.Add(pAdd);
            db.SaveChanges();




            string script = "alert('Kişi başarıyla eklendi.'); window.location='KisiKayıt.aspx';";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
}