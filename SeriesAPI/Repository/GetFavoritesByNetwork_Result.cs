using System.ComponentModel.DataAnnotations;

namespace SeriesAPI.Repository
{
    public class GetFavoritesByNetwork_Result
    {
        [Key]
        public string ProductionHouse { get; set; }
        public string ColorCode { get; set; }
        public int FavoriteCount { get; set; }
    }
}
