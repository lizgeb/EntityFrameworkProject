using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntityFrameworkProject.Entity;

namespace EntityFrameworkProject
{
    public partial class KisiKayıt : System.Web.UI.Page
    {
        ENTITYFRAMEWORKDBEntities db= new ENTITYFRAMEWORKDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var degerler=db.TBLPerson.ToList();
            Repeater1.DataSource=degerler;
            Repeater1.DataBind();  
        }
    }
}