using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class EmpleadosCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            //  txtCodEmp.Focus();

            //PARA FECHA ACTUAL SE PUEDE UTILIZAR
            //DateTime dtHoy = System.DateTime.Now;   Ó   DateTime.Today
        }

        protected void cmd_Enviar(object sender, EventArgs e)
        {
            lblValores.Visible = true;
            lblValores.Text = "VALORES DEL FORMULARIO" +
            "<br/> Código Empleado: " + txtCodEmp.Text +
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

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
        

            Calendar calendario = sender as Calendar;

            switch (calendario.ID) {

                case "CalendarBorn":
                    
                    txtNac.Text = (CalendarBorn.SelectedDate.ToString()).Substring(0, 11); // LE SACO LOS 00:00:00 A LA FECHA SELECCIONADA ;
                    txtFnaEmp.Text = (CalendarBorn.SelectedDate.ToString()).Substring(0, 11); // LE SACO LOS 00:00:00 A LA FECHA SELECCIONADA ;

                    //CalendarBorn.SelectedDate = Convert.ToDateTime(txtFnaEmp.Text);  NO ME FUNCIONOOO
                    break;
                case "CalendarIngr":
                    cFinEmp.Text = (CalendarIngr.SelectedDate.ToString()).Substring(0, 11); // LE SACO LOS 00:00:00 A LA FECHA SELECCIONADA ;
                    txtFinEmp.Text = (CalendarIngr.SelectedDate.ToString()).Substring(0, 11);
                    break;
            }

            //SI LOS TEXTBOX TIENEN TEXTOS HAREMOS:
            if ((cFinEmp.Text != "") && (txtNac.Text != ""))
            {
                //SI LA FECHA DE NACIMIENTO ES MAYOR A LA FECHA DE INGRESO)
                if (Convert.ToDateTime(txtNac.Text) >= Convert.ToDateTime(cFinEmp.Text))
                {
                    lblError1.Text = "La fecha de Nacimiento,\n no puede ser mayor o Igual a la de Ingreso";
                }
                else { lblError1.Text = string.Empty; };
            }

            //SOLO PARA EVALUAR LA FECHA DE INGRESO:
            if (cFinEmp.Text != ""){
                if (Convert.ToDateTime(cFinEmp.Text) > DateTime.Today)
                {
                    lblError2.Text = "La fecha de Ingreso,\n no puede ser mayor al día actual";

                    txtAños.Text = string.Empty;
                    TxtMeses.Text = string.Empty;
                    txtDias.Text = string.Empty;
                }
                else { lblError2.Text = string.Empty;

                    // SE CALCULA LA ANTIGUEDAD
                    DateTime dtHoy = System.DateTime.Now;
                    TimeSpan diferencia = dtHoy - Convert.ToDateTime(cFinEmp.Text); //CAMBIÉ ESTA PARTE
                    DateTime fechamin = new DateTime(1, 1, 1);
                    txtAños.Text = ((fechamin + diferencia).Year - 1).ToString();
                    TxtMeses.Text = ((fechamin + diferencia).Month - 1).ToString();
                    txtDias.Text = ((fechamin + diferencia).Day).ToString();

                };

                
                
            };

            if (txtNac.Text != "")
            {
                if (Convert.ToDateTime(txtNac.Text) > DateTime.Today)
                {
                    lblError3.Text = "La fecha de Nacimiento,\n no puede ser mayor al día actual";
                }
                else { lblError3.Text = string.Empty; };
            };
        }

        protected void txt_TextChanged(object sender, EventArgs e)
        {

          /*  if ((cFinEmp.Text != "") && (txtNac.Text != "")) {
                //SI LA FECHA DE NACIMIENTO ES MAYOR A LA FECHA DE INGRESO)
                if (Convert.ToDateTime(txtNac.Text) >= Convert.ToDateTime(cFinEmp.Text)){
                    lblError1.Text = "La fecha de Nacimiento0,no puede ser mayor a la de Ingreso";
                }
                
                
            }*/
        }
    }
}