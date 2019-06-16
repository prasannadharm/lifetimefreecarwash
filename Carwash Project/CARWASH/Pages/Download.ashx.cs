using CARWASH.DAO;
using ClosedXML.Excel;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;


namespace CARWASH.Pages
{
    /// <summary>
    /// Summary description for Download
    /// </summary>
    public class Download : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            if (context.Request.QueryString["type"] != null)
            {
                string strtype = context.Request.QueryString["type"].ToString();
                string folderpath = System.Configuration.ConfigurationManager.AppSettings["FolderPath"];
                string Savepath = context.Server.MapPath("~//" + folderpath);
                string phy_file_name = "";

                DataSet ds = new DataSet();
                if (strtype.Trim().ToLower() == "cardealer")
                {
                    ds = new DownloadDAO().GetCarDealers();
                    phy_file_name = string.Format("cardealer-{0:yyyy-MM-dd_hh-mm-ss-tt}.xlsx", DateTime.Now);
                }
                else
                {
                    ds = new DownloadDAO().GetCarWashOperators();
                    phy_file_name = string.Format("carwashoperator-{0:yyyy-MM-dd_hh-mm-ss-tt}.xlsx", DateTime.Now);
                }

                if (!Directory.Exists(Savepath))
                    Directory.CreateDirectory(Savepath);

                using (XLWorkbook wb = new XLWorkbook())
                {
                    string shetname = "";
                    if (strtype.Trim().ToLower() == "cardealer")
                        shetname = "Car Dealers";
                    else
                        shetname = "Car Wash Operators Dealers";

                    var ws = wb.Worksheets.Add(shetname);

                    ws.ShowGridLines = false;
                    ws.Cell(1, 1).InsertTable(ds.Tables[0]);
                    ws.AutoFilter.Enabled = false;
                    //Setting Font Size to 8
                    ws.Style.Font.FontSize = 10;

                    //Setting Page Marging
                    ws.Worksheet.PageSetup.Margins.Left = 0.25D;
                    ws.Worksheet.PageSetup.Margins.Right = 0.25D;
                    ws.Worksheet.PageSetup.Margins.Top = 0.75D;
                    ws.Worksheet.PageSetup.Margins.Bottom = 0.75D;
                    ws.Worksheet.PageSetup.Margins.Header = 0.3D;
                    ws.Worksheet.PageSetup.Margins.Footer = 0.3D;
                    //Setting Page Orientation and Page Source
                    ws.Worksheet.PageSetup.PageOrientation = XLPageOrientation.Landscape;
                    ws.Worksheet.PageSetup.PaperSize = XLPaperSize.A4Paper;
                    ws.Columns().AdjustToContents();  // Adjust column width
                    ws.Rows().AdjustToContents();     // Adjust row heights                  
                    wb.SaveAs(Savepath + "\\" + phy_file_name);

                }

                if (File.Exists(Savepath + "\\" + phy_file_name))
                {
                    context.Response.Clear();
                    context.Response.ContentType = "application/octet-stream";
                    context.Response.AddHeader("Content-Disposition", string.Format("attachment; filename=\"{0}\"", phy_file_name));
                    context.Response.WriteFile(Savepath + "\\" + phy_file_name);
                    context.Response.Flush();
                }

                if (File.Exists(Savepath + "\\" + phy_file_name))
                {
                    File.Delete(Savepath + "\\" + phy_file_name);
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}