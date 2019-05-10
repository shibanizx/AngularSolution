using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SeriesAPI.Common;
using SeriesAPI.Models;
using SeriesAPI.Repository;

namespace SeriesAPI.Controllers
{
    [Produces("application/json")]
    [Route("api/series")]
    public class SeriesController : ControllerBase
    {
        private readonly SeriesEntityContext _context;
        
        public SeriesController(SeriesEntityContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetShows()
        {
            List<GetAllShows_Result> showList = await _context.GetAllShows.FromSql(Resources.SqlQuery_GetShows)?.ToListAsync();

            List<ShowEntity> shows = new List<ShowEntity>();

            if (showList.Any())
            {
                showList.ForEach(show => shows.Add(new ShowEntity()
                {
                    AddedOn = HelperClass.ConvertDateTimeToEpoch(show.AddedOn),
                    Ended = show.Ended,
                    EpisodeLength = show.EpisodeLength,
                    Favorite = show.Favorite,
                    Genre = _context.Genre.Where(g => show.Genre.Split(',', StringSplitOptions.None)
                    .Contains(g.Id.ToString()))
                    .Select(genre => new GenreEntity()
                    {
                        GenreId = genre.Id,
                        Genre = genre.Name
                    }).OrderBy(g => g.Genre).ToList(),
                    Language = new AudioLanguageEntity()
                    {
                        LanguageId = show.LanguageId,
                        Language = show.Language
                    },
                    ModifiedOn = HelperClass.ConvertDateTimeToEpoch(show.ModifiedOn.Value),
                    NumberOfSeasons = show.NumberOfSeasons,
                    OnlineChannel = new OnlineChannelEntity()
                    {
                        OnlineChannelId = show.OnlineChannelId,
                        OnlineChannel = show.OnlineChannel
                    },
                    ProductionHouse = new ProductionHouseEntity()
                    {
                        ProductionHouseId = show.ProductionHouseId,
                        ProductionHouse = show.ProductionHouse,
                        ColorCode = show.ProductionHouseColorCode
                    },
                    Rating = new RatingsEntity()
                    {
                        Rating = show.RatingId,
                        RatingText = show.RatingText,
                        RatingColorCode = show.RatingColorCode
                    },
                    Remarks = show.Remarks,
                    Runtime = show.EpisodeLength * show.TotalEpisodes,
                    ShowId = show.ShowId,
                    ShowName = show.ShowName,
                    TotalEpisodes = show.TotalEpisodes,
                    WatchStatus = new WatchStatusEntity()
                    {
                        WatchStatusId = show.WatchStatusId,
                        WatchStatus = show.WatchStatus,
                        ColorCode = show.WatchStatusColorCode
                    }
                })
            );
            }

            return Ok(shows.OrderBy(s => s.ShowName));
        }

        [HttpPost]
        public async Task<IActionResult> AddShow([FromBody] ShowEntity showEntity)
        {
            if (showEntity == null)
                return BadRequest(Resources.ErrorMsg_ShowModelNull);

            if (showEntity.ProductionHouse == null || showEntity.ProductionHouse.ProductionHouseId == null || showEntity.ProductionHouse.ProductionHouseId.Equals(Guid.Empty))
                return BadRequest(Resources.ErrorMsg_InvalidProductionId);

            if (showEntity.Language == null || showEntity.Language.LanguageId == null || showEntity.Language.LanguageId.Equals(Guid.Empty))
                return BadRequest(Resources.ErrorMsg_InvalidLanguageId);

            if (showEntity.WatchStatus == null || showEntity.WatchStatus.WatchStatusId == 0 )
                return BadRequest(Resources.ErrorMsg_InvalidStatusId);

            if (showEntity.OnlineChannel == null || showEntity.OnlineChannel.OnlineChannelId == null || showEntity.OnlineChannel.OnlineChannelId.Equals(Guid.Empty))
                return BadRequest(Resources.ErrorMsg_InvalidChannelId);

            if (showEntity.Genre == null || !showEntity.Genre.Any())
                return BadRequest(Resources.ErrorMsg_NoGenresFound);
            
            Show show = new Show()
            {
                ShowName = showEntity.ShowName,
                StatusId = showEntity.WatchStatus.WatchStatusId,
                ProductionHouseId = showEntity.ProductionHouse.ProductionHouseId,
                OnlineChannelId = showEntity.OnlineChannel.OnlineChannelId,
                LanguageId = showEntity.Language.LanguageId,
                Genre = string.Join(",", showEntity.Genre.OrderBy(g => g.GenreId).Select(t => t.GenreId).ToList()),
                AddedOn = HelperClass.ConvertEpochToDateTime(showEntity.AddedOn),
                Ended = showEntity.Ended,
                EpisodeLength = showEntity.EpisodeLength,
                Favorite = showEntity.Favorite,
                ModifiedOn = HelperClass.ConvertEpochToDateTime(showEntity.ModifiedOn.Value),
                NumberOfSeasons = showEntity.NumberOfSeasons,
                Rating = showEntity.Rating.Rating,
                Remarks = showEntity.Remarks,
                TotalEpisodes = showEntity.TotalEpisodes
            };

            _context.Show.Add(show);
            await _context.SaveChangesAsync();

            return Ok(Resources.InfoMsg_ShowAddSuccess);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateShow(Guid showId, [FromBody] ShowEntity showEntity)
        {
            if (showId == null || showId.Equals(Guid.Empty))
                return BadRequest(Resources.ErrorMsg_InvalidShowId);

            var show = await _context.Show.FirstOrDefaultAsync(s => s.ShowId == showId);

            if (show == null)
                return BadRequest(Resources.ErrorMsg_ShowNotFound);

            show.ShowName = showEntity.ShowName;
            show.StatusId = showEntity.WatchStatus.WatchStatusId;
            show.ProductionHouseId = showEntity.ProductionHouse.ProductionHouseId;
            show.OnlineChannelId = showEntity.OnlineChannel.OnlineChannelId;
            show.LanguageId = showEntity.Language.LanguageId;
            show.Genre = string.Join(",", showEntity.Genre.OrderBy(g => g.GenreId).Select(t => t.GenreId).ToList());
            //show.AddedOn = HelperClass.ConvertEpochToDateTime(showEntity.AddedOn);
            show.Ended = showEntity.Ended;
            show.EpisodeLength = showEntity.EpisodeLength;
            show.Favorite = showEntity.Favorite;
            show.ModifiedOn = HelperClass.ConvertEpochToDateTime(showEntity.ModifiedOn.Value);
            show.NumberOfSeasons = showEntity.NumberOfSeasons;
            show.Rating = showEntity.Rating.Rating;
            show.Remarks = showEntity.Remarks;
            show.TotalEpisodes = showEntity.TotalEpisodes;

            _context.Show.Update(show);

            await _context.SaveChangesAsync();

            return Ok(Resources.InfoMsg_ShowUpdateSuccess);
        }

        [HttpDelete]
        public async Task<IActionResult> DeleteShow(Guid showId)
        {
            if (showId == null || showId.Equals(Guid.Empty))
                return BadRequest(Resources.ErrorMsg_InvalidShowId);

            await _context.Database.ExecuteSqlCommandAsync(string.Format(Resources.SqlQuery_DeleteShow, showId.ToString()));

            return Ok(Resources.InfoMsg_ShowDeleteSuccess);
        }
    }
}