using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SeriesAPI.Common;
using SeriesAPI.Models;
using SeriesAPI.Repository;

namespace SeriesAPI.Controllers
{
    [Produces("application/json")]
    [Route("api/statistics")]
    public class StatisticsController : Controller
    {
        private readonly SeriesEntityContext _context;

        public StatisticsController(SeriesEntityContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("statusCount")]
        public async Task<IActionResult> GetStatusCount()
        {
            return Ok(await _context.GetStatusCount.FromSql(Resources.SqlQuery_GetStatusCount)?.ToListAsync());
        }

        [HttpGet]
        [Route("favoritesByNetwork")]
        public async Task<IActionResult> GetFavoritesByProductionHouse()
        {
            return Ok(await _context.GetFavoritesByNetwork.FromSql(Resources.SqlQuery_GetFavoritesByNetwork)?.ToListAsync());
        }

        [HttpGet]
        [Route("genreBasedNetworkData")]
        public async Task<IActionResult> GetGenreBasedNetworkData()
        {
            List<Genre> genres = await _context.Genre.OrderBy(g => g.Name).ToListAsync();

            var genreBasedNetworkData = new
            {
                GenreData = genres.Select(g => g.Name).ToList(),
                NetworkData = from shows in await _context.GetNetworkBasedShowData.FromSql(Resources.SqlQuery_GetNetworkBasedShowData)?.ToListAsync()
                              group new { shows.ShowId, shows.Genre }
                              by new
                              {
                                  shows.ProductionHouseId,
                                  shows.ProductionHouse,
                                  shows.ProductionHouseColorCode
                              } into grp
                              select new
                              {
                                  grp.Key.ProductionHouse,
                                  ColorCode = grp.Key.ProductionHouseColorCode,
                                  GenreCountList = genres.Select(t => grp.Count(s => s.Genre.Split(',', StringSplitOptions.None).Contains(t.Id.ToString()))).ToList()
                              }
            };

            return Ok(genreBasedNetworkData);
        }

    }
}