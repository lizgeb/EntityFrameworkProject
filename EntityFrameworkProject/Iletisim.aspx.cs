using EntityFrameworkProject.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityFrameworkProject
{
    public partial class Iletisim : System.Web.UI.Page
    {
        ENTITYFRAMEWORKDBEntities db = new ENTITYFRAMEWORKDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler = (from person in db.TBLPerson
                            join contact in db.TBLContact on person.Pid equals contact.Pid
                            select new
                            {
                                Pid = person.Pid,
                                Ad = person.Ad,
                                Soyad = person.Soyad,
                                Mail = contact.Mail,
                                Telefon = contact.Telefon,
                            }).ToList();

            Repeater1.DataSource = degerler;
            Repeater1.DataBind();

        }
    }
}