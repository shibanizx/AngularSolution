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

    public class WatchStatusEntity
    {
        public int WatchStatusId { get; set; }
        public string WatchStatus { get; set; }
        public string ColorCode { get; set; }
    }

    public class ProductionHouseEntity
    {
        public Guid ProductionHouseId { get; set; }
        public string ProductionHouse { get; set; }
        public string ColorCode { get; set; }
    }

    public class OnlineChannelEntity
    {
        public Guid OnlineChannelId { get; set; }
        public string OnlineChannel { get; set; }
    }
    public class AudioLanguageEntity
    {
        public Guid LanguageId { get; set; }
        public string Language { get; set; }
    }

    public class GenreEntity
    {
        public int GenreId { get; set; }
        public string Genre { get; set; }
    }

    public class RatingsEntity
    {
        public int Rating { get; set; }
        public string RatingText { get; set; }
        public string RatingColorCode { get; set; }
    }
}
