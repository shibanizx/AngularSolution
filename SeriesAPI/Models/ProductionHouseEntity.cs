using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Models
{
    public class ProductionHouseEntity
    {
        public Guid ProductionHouseId { get; set; }
        public string ProductionHouse { get; set; }
        public string ColorCode { get; set; }
    }
}
