using System;
using System.Collections.Generic;

namespace SeriesAPI.Models
{
    public class ShowEntity
    {
        public Guid ShowId { get; set; }
        public string ShowName { get; set; }
        public ProductionHouseEntity ProductionHouse { get; set; }
        public WatchStatusEntity WatchStatus { get; set; }

        public OnlineChannelEntity OnlineChannel { get; set; }
        public AudioLanguageEntity Language { get; set; }
        public bool Ended { get; set; }
        public int? NumberOfSeasons { get; set; }
        public List<GenreEntity> Genre { get; set; }
        public int? TotalEpisodes { get; set; }
        public string Remarks { get; set; }
        public int? EpisodeLength { get; set; }
        public double AddedOn { get; set; }
        public double? ModifiedOn { get; set; }
        public RatingsEntity Rating { get; set; }
        public bool Favorite { get; set; }
        public int? Runtime { get; set; }
    }
}
