using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Repository
{
    public class GetStatusCount_Result
    {
        [Key]
        public string WatchStatus { get; set; }
        public int ShowCount { get; set; }
        public string ColorCode { get; set; }
    }
}
