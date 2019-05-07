using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SeriesAPI.Common;
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

    }
}