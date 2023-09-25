using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class Empleados1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCodEmp.Focus();
        }

        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
            //CUANDO HAGO CLICK EN BUTTON, LA LABEL CON ID: lblValores--
            lblValores.Visible = true; // LA HAREMOS VISIBLE.
            lblValores.Text = "VALORES DEL FORMULARIO" + // SU TEXTO DIRÁ:
            "<br/> Código Empleado: " + txtCodEmp.Text + // Código Empleado:+ VALOR DE TXTBOX COD EMP.
            "<br/> NIF: " + txtNifEmp.Text +
            "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
            "<br/> Dirección: " + txtDirEmp.Text +
            "<br/> Ciudad: " + txtCiuEmp.Text +
            "<br/> Teléfonos: " + txtTelEmp.Text +
            "<br/> Fecha de Nacimiento: " + txtFnaEmp.Text +
            "<br/> Fecha de Incorporación: " + txtFinEmp.Text +
            "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
            "<br/> Departamento: " + ddlDepEmp.Text;
        }
    }
}