using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SeriesAPI.Models;
using SeriesAPI.Repository;

namespace SeriesAPI.Controllers
{
    [Produces("application/json")]
    [Route("api/audioLanguage")]
    public class AudioLanguageController : Controller
    {
        private readonly SeriesEntityContext _context;

        public AudioLanguageController(SeriesEntityContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllLanguages()
        {
            return Ok(await _context.AudioLanguage.Select(l => new AudioLanguageEntity
            { LanguageId = l.Id, Language = l.Language }).OrderBy(l => l.Language).ToListAsync());
        }
    }
}