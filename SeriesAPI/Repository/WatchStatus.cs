using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Repository
{
    public class WatchStatus
    {
        public int Id { get; set; }
        public string Status { get; set; }

        public string ColorCode { get; set; }

        public virtual ICollection<Show> Show { get; set; }
    }
}
