using System;
using System.Collections.Generic;
namespace PetVet.Models
{
    public class PreAgendamento
    {
        private string nome;
        private string telefone;
        private string dataTimes;
        private string animal;
        private string necessidade;

        public PreAgendamento(string nome, string telefone, string dataTimes, string animal, string necessidade)
        {
            this.Nome = nome;
            this.Telefone = telefone;
            this.DataTimes = dataTimes;
            this.Animal = animal;
            this.Necessidade = necessidade;
        }

        public string Nome { get => nome; set => nome = value; }
        public string Telefone { get => telefone; set => telefone = value; }
        public string DataTimes { get => dataTimes; set => dataTimes = value; }
        public string Animal { get => animal; set => animal = value; }
        public string Necessidade { get => necessidade; set => necessidade = value; }


        private static List<PreAgendamento> listaChecagens = new List<PreAgendamento>();

        public static void Incluir(PreAgendamento agendamento)
        {
            listaChecagens.Add(agendamento);
        }
    }
}