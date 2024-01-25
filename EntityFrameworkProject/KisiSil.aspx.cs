using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntityFrameworkProject.Entity;
namespace EntityFrameworkProject
{
    public partial class KisiSil : System.Web.UI.Page
    {
        ENTITYFRAMEWORKDBEntities db = new ENTITYFRAMEWORKDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // Silme işlemi için Pid değerini aldık
                int PidToDelete = int.Parse(Request.QueryString["id"]);

                // Sil butonundan alınan id değerine göre TBLPerson'da arama yaparak değişkende tutttuk
                TBLPerson personToDelete = db.TBLPerson.Find(PidToDelete);

                if (personToDelete != null)
                {
                    // Kişiyi sil
                    db.TBLPerson.Remove(personToDelete);
                    db.SaveChanges();
                   
                }
                else
                {

                    Response.Write("<script>alert('Kişi bulunamadı.');</script>");
                }
            }
            catch (Exception ex)
            {

                //Hata mesajını göstermek için
                Response.Write("Hata: " + ex.Message);


            }
        }
    }
}
