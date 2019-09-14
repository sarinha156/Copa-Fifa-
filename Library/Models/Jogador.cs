using Library.Models.Enuns;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library.Models
{
    public class Jogador
    {
        public Jogador()
        {

        }

        public Jogador(DateTime _dataNascimento)
        {
            this.dtNascimento = _dataNascimento;
        }

        public Jogador(DateTime _dataConvocacao, DateTime _dataDispensa)
        {
            this.dtConvocacao = _dataConvocacao;
            this.dtDispensa = _dataDispensa;
        }

        private int id;
        private string nmNome;
        private DateTime dtNascimento;
        private int nrCamisa;
        private string nmPosicao;
        private DateTime dtConvocacao;
        private DateTime dtDispensa;
        private PosicaoEnum posicao;
        private int Days;
        private decimal Inde;
        private decimal Conta;


        public int Id { get => id; set => id = value; }
        public string NmNome { get => nmNome; set => nmNome = value; }
        public DateTime DtNascimento { get => dtNascimento; set => dtNascimento = value; }
        public int NrCamisa { get => nrCamisa; set => nrCamisa = value; }
        public string NmPosicao { get => nmPosicao; set => nmPosicao = value; }
        public DateTime DtConvocacao { get => dtConvocacao; set => dtConvocacao = value; }
        public DateTime DtDispensa { get => dtDispensa; set => dtDispensa = value; }
        public PosicaoEnum Posicao { get => posicao; set => posicao = value; }
    
        public decimal Inde1 { get => Inde; set => Inde = value; }
        public decimal Conta1 { get => Conta; set => Conta = value; }
        public int Days1 { get => Days; set => Days = value; }

        public string ObterDados()
        {
            string mensagemFormatada = string.Format("Nome: {0}<br>  Nº: {1}<br>  Posição: {2}", NmNome, NrCamisa, NmPosicao);
            return mensagemFormatada;

            //return string.Format("Nome: {0}  Nº: {1}  Posição: {2}", nmNome, nrCamisa, nmPosição);
        }

        public int CalcularIdade()
        {
            return DateTime.Now.Subtract(DtNascimento).Days / 365;
        }
        public decimal CalcularIndenizacaoFifa()
        {
              Days1 = 30;
              Inde = DateTime.Now.Subtract(DtDispensa).Days - DateTime.Now.Subtract(DtConvocacao).Days;
              Conta = Days1 * Inde1 ;
            return Conta ;
        }
        // pegar data convocação e dispença e calcular o tempo q ele jogou para ganhar 
        //a indenização
    }
}
