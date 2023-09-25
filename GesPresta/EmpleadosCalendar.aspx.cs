using System;
using System.Collections.Generic;
using System.Globalization;
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

            if (!Page.IsPostBack)  // Se ejecuta solo en la carga inicial del Web Form Ó cuando se haga click en enviar
            {
                txtCodEmp.Focus();

             
            }
            else // Este código se ejecuta cuando es una devolución de datos
            {
               
            }
          

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


            if (CalendarBorn.SelectedDate != null) {

                //muestro la fecha seleccionada del calendar Born en los textbox
                txtNac.Text = (CalendarBorn.SelectedDate.ToString()).Substring(0, 11); // LE SACO LOS 00:00:00 A LA FECHA SELECCIONADA ;
                txtFnaEmp.Text = (CalendarBorn.SelectedDate.ToString()).Substring(0, 11); // LE SACO LOS 00:00:00 A LA FECHA SELECCIONADA ;
            }

            if (CalendarIngr.SelectedDate != null)
            {
                    //muestro la fecha seleccionada del calendar Ingr en los textbox
                    cFinEmp.Text = (CalendarIngr.SelectedDate.ToString()).Substring(0, 11); // LE SACO LOS 00:00:00 A LA FECHA SELECCIONADA ;
                    txtFinEmp.Text = (CalendarIngr.SelectedDate.ToString()).Substring(0, 11);
       
            }

            //SI AMBOSTIENEN TEXTOS HAREMOS:
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
            if (cFinEmp.Text != ""){ //SI LA CASILLA NO ESTÁ VACIA
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

            //SOLO PARA FECHA DE NACIMIENTO
            if (txtNac.Text != "")
            {
                if (Convert.ToDateTime(txtNac.Text) > DateTime.Today)
                {
                    lblError3.Text = "La fecha de Nacimiento,\n no puede ser mayor al día actual";
                }
                else { lblError3.Text = string.Empty; };
            };
        }

        protected void TextChanged_txt(object sender, EventArgs e)
        {
            //con el AutoPostBack="true" revisa, inmediatamente letra por letra el txt changed.
            CalendarBorn.SelectedDate = Convert.ToDateTime(txtNac.Text);
            CalendarBorn.VisibleDate = Convert.ToDateTime(txtNac.Text);

            /*  if ((cFinEmp.Text != "") && (txtNac.Text != "")) {
                  //SI LA FECHA DE NACIMIENTO ES MAYOR A LA FECHA DE INGRESO)
                  if (Convert.ToDateTime(txtNac.Text) >= Convert.ToDateTime(cFinEmp.Text)){
                      lblError1.Text = "La fecha de Nacimiento0,no puede ser mayor a la de Ingreso";
                  }


              }*/
        }
    }
}