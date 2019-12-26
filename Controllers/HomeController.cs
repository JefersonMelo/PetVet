using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PetVet.Models;


/* 
        Oi Jeferson
        ótimo , quase 100% de fato. Só senti falta de um elemento solicitado no enunciado: 
        " Ao clicar em “Enviar” o usuário será remetido a uma página em que mostra as informações 
        que o usuário digitou, confirmando o agendamento (wireframe não foi definido)."
        Trata-se de uma página estática que usa como Model o objeto resultante da postagem do 
        formulário e usa as informaões desse model para preencher elementos de texto na página.
        Se tiver dúvidas com a correção (ou com qualquer coisa) estamos à disposição.
        Abraço!
        tutor Daltron
 */
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

        [HttpPost]
        public IActionResult Agendamentos(PreAgendamento preAgendamento)
        {
            ChecagemLista.Incluir(preAgendamento);
            return View("Confirmacao");
        }
        //checagem antes de adicionar na lista
        
        public IActionResult Confirmacao()
        {  
            /* List<PreAgendamento> listaChecagens = ChecagemLista.ListarItens(); */
            return View();
        }
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
