using System;
using System.Collections.Generic;
namespace PetVet.Models
{
    public class ChecagemLista
    {
        private static List<PreAgendamento> listaChecagens = new List<PreAgendamento>();

        public static void Incluir(PreAgendamento agendamento)
        {
            foreach (PreAgendamento pa in listaChecagens)
            {
                listaChecagens.Add(agendamento);
            }

        }
    }
}