using System;
using CARWASH.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using CARWASH.DAO;

namespace CARWASH.Pages
{
    public partial class WashOperatorView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"] != null)
            {
                ((HiddenField)this.FindControl("hdnid")).Value = Request.QueryString["id"].ToString();
            }
            else
            {
                ((HiddenField)this.FindControl("hdnid")).Value = "0";
            }
        }

        [WebMethod]
        public static CarWashOperatorEntity[] Getdata(long id)
        {
            var details = new List<CarWashOperatorEntity>();
            try
            {
                details = new CarWashOperatorDAO().Getdata(id);
            }
            catch (Exception ex)
            {
                details.Clear();
                //details.Add(new DbStatusEntity(ex.Message));
            }
            return details.ToArray();
        }


        [WebMethod]
        public static CarWashOperatorPackageEntity[] GetPackagedata(long id)
        {
            var details = new List<CarWashOperatorPackageEntity>();
            try
            {
                details = new CarWashOperatorDAO().GetPackagedata(id);
            }
            catch (Exception ex)
            {
                details.Clear();
                //details.Add(new DbStatusEntity(ex.Message));
            }
            return details.ToArray();
        }
    }
}