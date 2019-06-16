using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CARWASH.Models
{
    public class CarWashOperatorEntity
    {
        public long ID { get; set; }
        public string CONTACT_PERSON { get; set; }
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
        public string CARWASH_TYPE { get; set; }
        public string GAS_STATION { get; set; }
        public string GAS_STATION_OTHER { get; set; }
        public int CARWASH_AGE_YR { get; set; }
        public int CARWASH_AGE_MN { get; set; }
        public string MAX_VOL_PER_DAY { get; set; }
        public string CONTACT_WEEK { get; set; }
        public string CONTACT_TIME { get; set; }
        public string QUESTIONS { get; set; }
        public List<CarWashOperatorPackageEntity> PACKAGE { get; set; }
    }

    public class CarWashOperatorPackageEntity
    {
        public string NAME { get; set; }
        public double PRICE { get; set; }
    }
}