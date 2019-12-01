using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PetVet.Models;

namespace PetVet.Controllers
{
    public class HomeController : Controller
    {

        //retorna a home page
        public IActionResult Index()
        {
            return View();
        }
        //retorna serviços
        public IActionResult Servicos()
        {
            return View();
        }
        //retorna agendamentos
        public IActionResult Agendamentos()
        {
            return View();
        }
/*         public IActionResult ChecarLista()
        {
            return View();
        }
 */
/*         [HttpPost]
        public IActionResult PreAgendamento(PreAgendamento preAgendamento)
        {
            ChecagemLista.Incluir(preAgendamento);
            return View();
        }
 */
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
