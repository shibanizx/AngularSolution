using SeriesAPI.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Models
{
    public class RatingsEntity
    {
        public int Rating { get; set; }
        public string RatingText { get; set; }
        public string RatingColorCode { get; set; }

        public virtual ICollection<Show> Show { get; set; }
    }
}
