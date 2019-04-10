using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Repository
{
    public class ProductionHouse
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string ColorCode { get; set; }

        public virtual ICollection<Show> Show { get; set; }
    }
}
