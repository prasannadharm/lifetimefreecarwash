using CARWASH.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using CARWASH.DAO;
using CARWASH.Generic;

namespace CARWASH.Pages
{
    public partial class CarWashOperatorRegistartion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static DbStatusEntity[] InsertData(CarWashOperatorEntity obj)
        {
            var details = new List<DbStatusEntity>();
            try
            {
                details.Add(new CarWashOperatorDAO().InsertCarWashOperator(obj));


                string strsub = "Thank you for registering with us";
                string strmsg = "Hi " + obj.FIRM_NAME + ",<br><br>Thank you for registering with us, We will get back to you shortly.<br><br>Regards,<br>Car Wash Management Services Inc.<br>Ayaz Shirazee<br>Ph: +1 847-530-7939";
                new SendEmail().SendMail(obj.EMAIL, strsub, strmsg);

                string stradd = new EmailServerDAO().GetEmailAddressTo();
                strsub = "New Car wash operator registartion : " + obj.FIRM_NAME;
                strmsg = "Hi," + "<br>We have a new car wash operator registartion with below details:<br>";
                strmsg = strmsg + "<b>Company</b> : " + obj.FIRM_NAME + ".<br>";
                strmsg = strmsg + "<b>Contact</b> : " + obj.CONTACT_PERSON + ".<br>";
                strmsg = strmsg + "<b>Email</b>   : " + obj.EMAIL + ".<br>";
                strmsg = strmsg + "<b>Question</b>: " + obj.QUESTIONS + ".<br><br>";
                strmsg = strmsg + "For more details please follow the link : <a href='" + System.Configuration.ConfigurationManager.AppSettings["PORTALURL"] + "Pages/WashOperatorView.aspx?id=" + details[0].CNT + "'>Car Wash Management Services Inc Portal</a><br><br>";
                strmsg = strmsg + "Regards,<br>Car Wash Management Services Inc.<br>Ayaz Shirazee<br>Ph: +1 847-530-7939";
                new SendEmail().SendMail(stradd, strsub, strmsg);

            }
            catch (Exception ex)
            {
                details.Clear();
                details.Add(new DbStatusEntity(ex.Message));
            }
            return details.ToArray();
        }
    }
}