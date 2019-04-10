using System;

namespace SeriesAPI.Repository
{
    public class Show
    {
        public Guid ShowId { get; set; }
        public string ShowName { get; set; }
        public Guid? ProductionHouseId { get; set; }
        public int StatusId { get; set; }
        public Guid? OnlineChannelId { get; set; }
        public Guid? LanguageId { get; set; }
        public bool Ended { get; set; }
        public int? NumberOfSeasons { get; set; }
        public string Genre { get; set; }
        public int? TotalEpisodes { get; set; }
        public string Remarks { get; set; }
        public int? EpisodeLength { get; set; }
        public DateTime AddedOn { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int? Rating { get; set; }
        public bool Favorite { get; set; }

        public virtual AudioLanguage Language { get; set; }
        public virtual OnlineChannel OnlineChannel { get; set; }
        public virtual ProductionHouse ProductionHouse { get; set; }
        public virtual WatchStatus Status { get; set; }
    }
}
