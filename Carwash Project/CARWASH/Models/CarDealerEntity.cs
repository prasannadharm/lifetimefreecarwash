using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CARWASH.Models
{
    public class CarDealerEntity
    {        
        public long ID { get; set; }
        public string FIRST_NAME { get; set; }
        public string LAST_NAME { get; set; }
        public string FIRM_NAME { get; set; }
        public string ADDRESS { get; set; }
        public string STATE { get; set; }
        public string ZIPCODE { get; set; }
        public string EMAIL { get; set; }
        public string WEBSITE { get; set; }
        public string PHONE { get; set; }
        public string FAX { get; set; }
        public string MON_TIME_FROM { get; set; }
        public string MON_TIME_TO { get; set; }
        public string TUE_TIME_FROM { get; set; }
        public string TUE_TIME_TO { get; set; }
        public string WED_TIME_FROM { get; set; }
        public string WED_TIME_TO { get; set; }
        public string THU_TIME_FROM { get; set; }
        public string THU_TIME_TO { get; set; }
        public string FRI_TIME_FROM { get; set; }
        public string FRI_TIME_TO { get; set; }
        public string SAT_TIME_FROM { get; set; }
        public string SAT_TIME_TO { get; set; }
        public string SUN_TIME_FROM { get; set; }
        public string SUN_TIME_TO { get; set; }
        public string CONTACT_WEEK { get; set; }
        public string CONTACT_TIME { get; set; }
        public string QUESTIONS { get; set; }
        public long NEWCARSSOLD2018 { get; set; }
        public long USEDCARSSOLD2018 { get; set; }
        public bool HAS_CAR_WASH { get; set; }
}
}