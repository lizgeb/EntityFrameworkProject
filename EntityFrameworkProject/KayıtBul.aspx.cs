using System;
using System.Linq;
using EntityFrameworkProject.Entity;

namespace EntityFrameworkProject
{
    public partial class KayıtBul : System.Web.UI.Page
    {
        ENTITYFRAMEWORKDBEntities db = new ENTITYFRAMEWORKDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          int tcKimlik=Convert.ToInt32(textKimlik.Text);    

                try
                {
                    var degerler = (from person in db.TBLPerson
                                    join about in db.TBLAboutt on person.Pid equals about.Pid
                                    join contact in db.TBLContact on person.Pid equals contact.Pid
                                    where person.Pid == tcKimlik
                                    select new
                                    {
                                        Pid = person.Pid,
                                        Ad = person.Ad,
                                        Soyad = person.Soyad,
                                        EgitimDerecesi = about.EgitimDerecesi,
                                        Mezuniyet = about.Mezuniyet,
                                        DogumYeri = about.DogumYeri,
                                        DogumTarihi = about.DogumTarihi,
                                        Yas = about.Yas,
                                        Mail = contact.Mail,
                                        Telefon = contact.Telefon,
                                    }).ToList();

                    Repeater1.DataSource = degerler;
                    Repeater1.DataBind();
                }
                catch (Exception ex)
                {
                    // Log or display the error message
                    Response.Write("Error: " + ex.Message);
                }
            }

        }
    }
