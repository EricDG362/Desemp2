using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desemp2
{
    public partial class Formulario1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         

            HttpCookie cook1 = Request.Cookies["pass"];
            Label1.Text = cook1 != null ? cook1.Value : "Cookie no creada";

            HttpCookie cook2 = Request.Cookies["nombre"];
            Label2.Text = cook2 != null ? cook2.Value : "CookieSession no creada";


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie1 = new HttpCookie("pass", TextBox4.Text);
            HttpCookie cookieSession = new HttpCookie("nombre", TextBox2.Text);

            cookie1.Expires = DateTime.Now.AddSeconds(5); //tiene expiracion por lo tanto ya no va a ser de session

            Response.Cookies.Add(cookie1); // agregamos cookies
            Response.Cookies.Add(cookieSession);
            Response.Redirect(Request.RawUrl);//para q me la muestre en la pagina

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Guardar el texto en Session para compartirlo con FormularioArchivo
            Session["nombre"] = Label2.Text;
            // Redirigir a Formulario B
            

            Response.Redirect("FormularioArchivo.aspx");
        }
    }
}