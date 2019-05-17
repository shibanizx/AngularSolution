using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SeriesAPI.Models;
using SeriesAPI.Repository;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Controllers
{
    [Produces("application/json")]
    [Route("api/Ratings")]
    public class RatingsController : Controller
    {
        private readonly SeriesEntityContext _context;

        public RatingsController(SeriesEntityContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllRatings()
        {
            return Ok(await _context.Ratings.Select(g => new
            { Rating = g.Id, RatingText = g.Value, ColorCode = g.ColorCode }).OrderBy(g => g.Rating).ToListAsync());
        }
    }
}