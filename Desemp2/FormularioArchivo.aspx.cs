using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace Desemp2
{
    public partial class FormularioArchivo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // Verifica si hay un valor en Session y se lo asigna a la Label
            if (Session["nombre"] != null)
            {
                Label1.Text = Session["nombre"].ToString();
            }
            else
            {
                Label1.Text = "No se encontró texto desde Formulario A";
            }

            mostrarGrilla();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //se asigna una ruta con el nombre del usuario
            string path = Path.Combine(Server.MapPath("."), Label1.Text);

            if (!Directory.Exists(path)) //si existe que lo coloque
            {
                Directory.CreateDirectory(path);
            }
            foreach (HttpPostedFile archivo in FileUpload1.PostedFiles)
            {

                FileUpload1.SaveAs($"{path}/{archivo.FileName}");
            }
            mostrarGrilla();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "descargar")
            {
                GridViewRow registro = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = registro.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
        }

        public void mostrarGrilla()
        {
            string path = Path.Combine(Server.MapPath("."), Label1.Text);
            if (Directory.Exists(path))
            {
                string[] files = Directory.GetFiles(path);
                List<Class1> fileList = new List<Class1>();
                foreach (string file in files)
                {
                    var fileNew = new Class1(Path.GetFileName(file), file);
                    fileList.Add(fileNew);
                }
                GridView1.DataSource = fileList;
                GridView1.DataBind();
            }
        }
    }
}
