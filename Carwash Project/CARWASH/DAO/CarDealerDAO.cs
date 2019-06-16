using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using CARWASH.Models;


namespace CARWASH.DAO
{
    public class CarDealerDAO
    {
        public DbStatusEntity InsertCarDealers(CarDealerEntity obj)
        {
            DbStatusEntity objreturn = new DbStatusEntity();
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("USP_InsertCarDealers", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FIRST_NAME", obj.FIRST_NAME);
                    cmd.Parameters.AddWithValue("@LAST_NAME", obj.LAST_NAME);
                    cmd.Parameters.AddWithValue("@FIRM_NAME", obj.FIRM_NAME);
                    cmd.Parameters.AddWithValue("@ADDRESS", obj.ADDRESS);
                    cmd.Parameters.AddWithValue("@STATE", obj.STATE);
                    cmd.Parameters.AddWithValue("@ZIPCODE", obj.ZIPCODE);
                    cmd.Parameters.AddWithValue("@EMAIL", obj.EMAIL);
                    cmd.Parameters.AddWithValue("@WEBSITE", obj.WEBSITE);
                    cmd.Parameters.AddWithValue("@PHONE", obj.PHONE);
                    cmd.Parameters.AddWithValue("@FAX", obj.FAX);
                     
                    cmd.Parameters.AddWithValue("@MON_TIME_FROM", obj.MON_TIME_FROM);
                    cmd.Parameters.AddWithValue("@MON_TIME_TO", obj.MON_TIME_TO);
                    cmd.Parameters.AddWithValue("@TUE_TIME_FROM", obj.TUE_TIME_FROM);
                    cmd.Parameters.AddWithValue("@TUE_TIME_TO", obj.TUE_TIME_TO);
                    cmd.Parameters.AddWithValue("@WED_TIME_FROM", obj.WED_TIME_FROM);
                    cmd.Parameters.AddWithValue("@WED_TIME_TO", obj.WED_TIME_TO);
                    cmd.Parameters.AddWithValue("@THU_TIME_FROM", obj.THU_TIME_FROM);
                    cmd.Parameters.AddWithValue("@THU_TIME_TO", obj.THU_TIME_TO);
                    cmd.Parameters.AddWithValue("@FRI_TIME_FROM", obj.FRI_TIME_FROM);
                    cmd.Parameters.AddWithValue("@FRI_TIME_TO", obj.FRI_TIME_TO);
                    cmd.Parameters.AddWithValue("@SAT_TIME_FROM", obj.SAT_TIME_FROM);
                    cmd.Parameters.AddWithValue("@SAT_TIME_TO", obj.SAT_TIME_TO);
                    cmd.Parameters.AddWithValue("@SUN_TIME_FROM", obj.SUN_TIME_FROM);
                    cmd.Parameters.AddWithValue("@SUN_TIME_TO", obj.SUN_TIME_TO);

                    cmd.Parameters.AddWithValue("@NEWCARSSOLD2018", obj.NEWCARSSOLD2018);
                    cmd.Parameters.AddWithValue("@USEDCARSSOLD2018", obj.USEDCARSSOLD2018);
                    cmd.Parameters.AddWithValue("@HAS_CAR_WASH", obj.HAS_CAR_WASH);
                    cmd.Parameters.AddWithValue("@CONTACT_WEEK", obj.CONTACT_WEEK);
                    cmd.Parameters.AddWithValue("@CONTACT_TIME", obj.CONTACT_TIME);
                    cmd.Parameters.AddWithValue("@QUESTIONS", obj.QUESTIONS);

                    
                    cmd.Parameters.Add("@RESULT", SqlDbType.Int);
                    cmd.Parameters["@RESULT"].Direction = ParameterDirection.Output;
                    cmd.Parameters.Add("@CNT", SqlDbType.Int);
                    cmd.Parameters["@CNT"].Direction = ParameterDirection.Output;
                    cmd.Parameters.Add("@MSG", SqlDbType.NVarChar, 500);
                    cmd.Parameters["@MSG"].Direction = ParameterDirection.Output;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    objreturn.RESULT = Convert.ToInt32(cmd.Parameters["@RESULT"].Value);
                    objreturn.CNT = Convert.ToInt32(cmd.Parameters["@CNT"].Value);
                    objreturn.MSG = Convert.ToString(cmd.Parameters["@MSG"].Value);
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return objreturn;
        }

        public List<CarDealerEntity> Getdata(Int64 id)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlDataAdapter adapter;
            DataSet ds = new DataSet();
            List<CarDealerEntity> retlst = new List<CarDealerEntity>();
            try
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("USP_GetCarDealersByID", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", id);
                    con.Open();
                    adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds);

                    for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
                    {
                        CarDealerEntity obj = new CarDealerEntity();
                        obj.ID = Convert.ToInt32(ds.Tables[0].Rows[i]["ID"].ToString());
                        obj.FIRST_NAME = ds.Tables[0].Rows[i]["FIRST_NAME"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["FIRST_NAME"].ToString();
                        obj.LAST_NAME = ds.Tables[0].Rows[i]["LAST_NAME"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["LAST_NAME"].ToString();
                        obj.FIRM_NAME = ds.Tables[0].Rows[i]["FIRM_NAME"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["FIRM_NAME"].ToString();
                        obj.ADDRESS = ds.Tables[0].Rows[i]["ADDRESS"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["ADDRESS"].ToString();
                        obj.STATE = ds.Tables[0].Rows[i]["STATE"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["STATE"].ToString();
                        obj.ZIPCODE = ds.Tables[0].Rows[i]["ZIPCODE"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["ZIPCODE"].ToString();
                        obj.EMAIL = ds.Tables[0].Rows[i]["EMAIL"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["EMAIL"].ToString();
                        obj.WEBSITE = ds.Tables[0].Rows[i]["WEBSITE"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["WEBSITE"].ToString();
                        obj.PHONE = ds.Tables[0].Rows[i]["PHONE"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["PHONE"].ToString();
                        obj.FAX = ds.Tables[0].Rows[i]["FAX"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["FAX"].ToString();
                        obj.MON_TIME_FROM = ds.Tables[0].Rows[i]["MON_TIME_FROM"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["MON_TIME_FROM"].ToString();
                        obj.MON_TIME_TO = ds.Tables[0].Rows[i]["MON_TIME_TO"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["MON_TIME_TO"].ToString();
                        obj.TUE_TIME_FROM = ds.Tables[0].Rows[i]["TUE_TIME_FROM"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["TUE_TIME_FROM"].ToString();
                        obj.TUE_TIME_TO = ds.Tables[0].Rows[i]["TUE_TIME_TO"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["TUE_TIME_TO"].ToString();
                        obj.WED_TIME_FROM = ds.Tables[0].Rows[i]["WED_TIME_FROM"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["WED_TIME_FROM"].ToString();
                        obj.WED_TIME_TO = ds.Tables[0].Rows[i]["WED_TIME_TO"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["WED_TIME_TO"].ToString();
                        obj.THU_TIME_FROM = ds.Tables[0].Rows[i]["THU_TIME_FROM"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["THU_TIME_FROM"].ToString();
                        obj.THU_TIME_TO = ds.Tables[0].Rows[i]["THU_TIME_TO"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["THU_TIME_TO"].ToString();
                        obj.FRI_TIME_FROM = ds.Tables[0].Rows[i]["FRI_TIME_FROM"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["FRI_TIME_FROM"].ToString();
                        obj.FRI_TIME_TO = ds.Tables[0].Rows[i]["FRI_TIME_TO"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["FRI_TIME_TO"].ToString();
                        obj.SAT_TIME_FROM = ds.Tables[0].Rows[i]["SAT_TIME_FROM"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["SAT_TIME_FROM"].ToString();
                        obj.SAT_TIME_TO = ds.Tables[0].Rows[i]["SAT_TIME_TO"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["SAT_TIME_TO"].ToString();
                        obj.SUN_TIME_FROM = ds.Tables[0].Rows[i]["SUN_TIME_FROM"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["SUN_TIME_FROM"].ToString();
                        obj.SUN_TIME_TO = ds.Tables[0].Rows[i]["SUN_TIME_TO"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["SUN_TIME_TO"].ToString();
                        obj.NEWCARSSOLD2018 = ds.Tables[0].Rows[i]["NEWCARSSOLD2018"] == DBNull.Value ? 0 : Convert.ToInt64(ds.Tables[0].Rows[i]["NEWCARSSOLD2018"]);
                        obj.USEDCARSSOLD2018 = ds.Tables[0].Rows[i]["USEDCARSSOLD2018"] == DBNull.Value ? 0 : Convert.ToInt64(ds.Tables[0].Rows[i]["USEDCARSSOLD2018"]);
                        obj.HAS_CAR_WASH = ds.Tables[0].Rows[i]["HAS_CAR_WASH"] == DBNull.Value ? false : Convert.ToBoolean(ds.Tables[0].Rows[i]["HAS_CAR_WASH"]);
                        obj.CONTACT_WEEK = ds.Tables[0].Rows[i]["CONTACT_WEEK"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["CONTACT_WEEK"].ToString();                        
                        obj.CONTACT_TIME = ds.Tables[0].Rows[i]["CONTACT_TIME"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["CONTACT_TIME"].ToString();
                        obj.QUESTIONS = ds.Tables[0].Rows[i]["QUESTIONS"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["QUESTIONS"].ToString();                        
                        retlst.Add(obj);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retlst;
        }
    }
}