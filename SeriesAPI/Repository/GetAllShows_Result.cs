using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Repository
{
    public class GetAllShows_Result
    {
        [Key]
        public Guid ShowId { get; set; }
        public string ShowName { get; set; }
        public Guid ProductionHouseId { get; set; }
        public string ProductionHouse { get; set; }
        public string ProductionHouseColorCode { get; set; }
        public int WatchStatusId { get; set; }
        public string WatchStatus { get; set; }
        public string WatchStatusColorCode { get; set; }
        public Guid OnlineChannelId { get; set; }
        public string OnlineChannel { get; set; }
        public Guid LanguageId { get; set; }
        public string Language { get; set; }
        public int RatingId { get; set; }
        public string RatingText { get; set; }
        public bool Ended { get; set; }
        public int NumberOfSeasons { get; set; }
        public string Genre { get; set; }
        public int TotalEpisodes { get; set; }
        public string Remarks { get; set; }
        public int EpisodeLength { get; set; }
        public DateTime AddedOn { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int Rating { get; set; }
        public bool Favorite { get; set; }
    }
}
