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
    [Route("api/productionHouse")]
    public class ProductionHouseController : Controller
    {
        private readonly SeriesEntityContext _context;

        public ProductionHouseController(SeriesEntityContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetAllProductionHouses()
        {
            return Ok(await _context.ProductionHouse.Select(p => new ProductionHouseEntity
            { ProductionHouseId = p.Id, ProductionHouse = p.Name, ColorCode = p.ColorCode }).OrderBy(p => p.ProductionHouse).ToListAsync());
        }
    }
}