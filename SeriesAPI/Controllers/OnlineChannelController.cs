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
    [Route("api/onlineChannel")]
    public class OnlineChannelController : Controller
    {
        private readonly SeriesEntityContext _context;

        public OnlineChannelController(SeriesEntityContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllOnlineChannels()
        {
            return Ok(await _context.OnlineChannel.Select(c => new 
            { OnlineChannelId = c.Id, OnlineChannel = c.Name }).OrderBy(c => c.OnlineChannel).ToListAsync());
        }
    }
}