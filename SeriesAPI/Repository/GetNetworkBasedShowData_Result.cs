using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Repository
{
    public class GetNetworkBasedShowData_Result
    {
        [Key]
        public Guid ShowId { get; set; }
        public string ShowName { get; set; }
        public Guid ProductionHouseId { get; set; }
        public string ProductionHouse { get; set; }
        public string ProductionHouseColorCode { get; set; }
        public string Genre { get; set; }
        public int TotalEpisodes { get; set; }
    }
}
