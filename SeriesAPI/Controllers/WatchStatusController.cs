using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SeriesAPI.Models;
using SeriesAPI.Repository;

namespace SeriesAPI.Controllers
{
    [Produces("application/json")]
    [Route("api/watchStatus")]
    public class WatchStatusController : Controller
    {
        private readonly SeriesEntityContext _context;

        public WatchStatusController(SeriesEntityContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllWatchStatus()
        {
            return Ok(await _context.WatchStatus.Select(s => new WatchStatusEntity
            { WatchStatusId = s.Id, WatchStatus = s.Status, ColorCode = s.ColorCode }).OrderBy(s => s.WatchStatus).ToListAsync());
        }
    }
}