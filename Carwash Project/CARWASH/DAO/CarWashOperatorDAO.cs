using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using CARWASH.Models;
using System.Reflection;

namespace CARWASH.DAO
{
    public class CarWashOperatorDAO
    {
        public List<CarWashOperatorEntity> Getdata(Int64 id)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlDataAdapter adapter;
            DataSet ds = new DataSet();
            List<CarWashOperatorEntity> retlst = new List<CarWashOperatorEntity>();
            try
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("USP_GetCarWaskOperatorsByID", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", id);
                    con.Open();
                    adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds);

                    for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
                    {
                        CarWashOperatorEntity obj = new CarWashOperatorEntity();
                        obj.ID = Convert.ToInt32(ds.Tables[0].Rows[i]["ID"].ToString());
                        obj.CONTACT_PERSON = ds.Tables[0].Rows[i]["CONTACT_PERSON"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["CONTACT_PERSON"].ToString();
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

                        obj.CARWASH_TYPE = ds.Tables[0].Rows[i]["CARWASH_TYPE"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["CARWASH_TYPE"].ToString();
                        obj.GAS_STATION = ds.Tables[0].Rows[i]["GAS_STATION"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["GAS_STATION"].ToString();
                        obj.GAS_STATION_OTHER = ds.Tables[0].Rows[i]["GAS_STATION_OTHER"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["GAS_STATION_OTHER"].ToString();

                        obj.CARWASH_AGE_YR = ds.Tables[0].Rows[i]["CARWASH_AGE_YR"] == DBNull.Value ? 0 : Convert.ToInt32(ds.Tables[0].Rows[i]["CARWASH_AGE_YR"]);
                        obj.CARWASH_AGE_MN = ds.Tables[0].Rows[i]["CARWASH_AGE_MN"] == DBNull.Value ? 0 : Convert.ToInt32(ds.Tables[0].Rows[i]["CARWASH_AGE_MN"]);
                        obj.MAX_VOL_PER_DAY = ds.Tables[0].Rows[i]["MAX_VOL_PER_DAY"] == DBNull.Value ? "0" : Convert.ToString(ds.Tables[0].Rows[i]["MAX_VOL_PER_DAY"]);

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

        public List<CarWashOperatorPackageEntity> GetPackagedata(Int64 id)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlDataAdapter adapter;
            DataSet ds = new DataSet();
            List<CarWashOperatorPackageEntity> retlst = new List<CarWashOperatorPackageEntity>();
            try
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("USP_GetCarWaskOpPackageByID", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", id);
                    con.Open();
                    adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds);

                    for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
                    {
                        CarWashOperatorPackageEntity obj = new CarWashOperatorPackageEntity();
                        obj.NAME = ds.Tables[0].Rows[i]["NAME"] == DBNull.Value ? "" : ds.Tables[0].Rows[i]["NAME"].ToString();
                        obj.PRICE = ds.Tables[0].Rows[i]["PRICE"] == DBNull.Value ? 0 : Convert.ToDouble(ds.Tables[0].Rows[i]["PRICE"]);                     
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

        public DbStatusEntity InsertCarWashOperator(CarWashOperatorEntity obj)
        {
            DbStatusEntity objreturn = new DbStatusEntity();
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("USP_InsertCarWashOperators", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CONTACT_PERSON", obj.CONTACT_PERSON);                    
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
                    cmd.Parameters.AddWithValue("@CARWASH_TYPE", obj.CARWASH_TYPE);
                    cmd.Parameters.AddWithValue("@GAS_STATION", obj.GAS_STATION);
                    cmd.Parameters.AddWithValue("@GAS_STATION_OTHER", obj.GAS_STATION_OTHER);

                    cmd.Parameters.AddWithValue("@CARWASH_AGE_YR", obj.CARWASH_AGE_YR);
                    cmd.Parameters.AddWithValue("@CARWASH_AGE_MN", obj.CARWASH_AGE_MN);
                    cmd.Parameters.AddWithValue("@MAX_VOL_PER_DAY", obj.MAX_VOL_PER_DAY);

                    cmd.Parameters.AddWithValue("@CONTACT_WEEK", obj.CONTACT_WEEK);
                    cmd.Parameters.AddWithValue("@CONTACT_TIME", obj.CONTACT_TIME);
                    cmd.Parameters.AddWithValue("@QUESTIONS", obj.QUESTIONS);

                    SqlParameter sqlParam = cmd.Parameters.AddWithValue("@PACKAGES", ToDataTable(obj.PACKAGE));
                    sqlParam.SqlDbType = SqlDbType.Structured;

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


        public static DataTable ToDataTable<T>(List<T> items)
        {
            DataTable dataTable = new DataTable(typeof(T).Name);

            //Get all the properties
            PropertyInfo[] Props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            foreach (PropertyInfo prop in Props)
            {
                //Defining type of data column gives proper data table 
                var type = (prop.PropertyType.IsGenericType && prop.PropertyType.GetGenericTypeDefinition() == typeof(Nullable<>) ? Nullable.GetUnderlyingType(prop.PropertyType) : prop.PropertyType);
                //Setting column names as Property names
                dataTable.Columns.Add(prop.Name, type);
            }
            foreach (T item in items)
            {
                var values = new object[Props.Length];
                for (int i = 0; i < Props.Length; i++)
                {
                    //inserting property values to datatable rows
                    values[i] = Props[i].GetValue(item, null);
                }
                dataTable.Rows.Add(values);
            }
            //put a breakpoint here and check datatable
            return dataTable;
        }
    }
}