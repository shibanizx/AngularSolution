using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Repository
{
    public class AudioLanguage
    {
        public Guid Id { get; set; }
        public string Language { get; set; }
        public virtual ICollection<Show> Show { get; set; }
    }
}
