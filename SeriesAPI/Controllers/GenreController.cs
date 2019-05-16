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
    [Route("api/Genre")]
    public class GenreController : Controller
    {
        private readonly SeriesEntityContext _context;

        public GenreController(SeriesEntityContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllGenre()
        {
            return Ok(await _context.Genre.Select(g => new
            { GenreId = g.Id, Genre = g.Name }).OrderBy(g => g.Genre).ToListAsync());
        }
    }
}