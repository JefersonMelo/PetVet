using System;
using System.Collections.Generic;
namespace PetVet.Models
{
    public class ChecagemLista
    {
        public static List<PreAgendamento> listaChecagens = new List<PreAgendamento>();

        public static void Incluir(PreAgendamento agendamento)
        {
            listaChecagens.Add(agendamento);
        }

    }
}