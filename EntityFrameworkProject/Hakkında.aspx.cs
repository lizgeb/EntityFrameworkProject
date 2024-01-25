using EntityFrameworkProject.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameworkProject
{
    public partial class Hakkında : System.Web.UI.Page
    {
        ENTITYFRAMEWORKDBEntities db = new ENTITYFRAMEWORKDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var degerler = db.TBLAboutt.ToList();
            //Repeater1.DataSource = degerler;
            //Repeater1.DataBind();

            var degerler = (from person in db.TBLPerson
                            join about in db.TBLAboutt on person.Pid equals about.Pid
                            select new
                            {
                                Pid = person.Pid,
                                Ad = person.Ad,
                                Soyad = person.Soyad,
                                EgitimDerecesi = about.EgitimDerecesi,
                                Mezuniyet = about.Mezuniyet,
                                DogumYeri = about.DogumYeri,
                                DogumTarihi = about.DogumTarihi,
                                Yas = about.Yas
                            }).ToList();

            Repeater1.DataSource = degerler;
            Repeater1.DataBind();

        }
    }
}