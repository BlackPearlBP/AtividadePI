Algoritmo "Calculadora Salarial"
// Disciplina  : Projeto Integrador
// Professor   : Jefferson Alexandre Provezi
// Descrição   : A seguinte aplicação têm o intuito de realizar o cálculo do salário líquido
// Autor(a)    : Brunno Pedro de Oliveira & Carla Yasmin Furtado Santos
// Data atual  : 20/10/2023
Var
   i,j: inteiro
   nome: caractere
   verificador, diasUteis: inteiro
   salarioBruto: real
   salarioLiquido: real
   INSS, IRRF, IRRFDescontado, FGTSDescontado: real
   INSSDescontado, valeTransporte, valeAlimentacao: real
   VTDIARIO, VADIARIO: real

Procedimento Iniciar()
Var
Inicio
   limpatela
   //Timer(130)
   escreval("Iniciando")
   para i de 0 ate 9 faca
      escreva(".")
   fimpara
   limpatela
   escreval()
   escreval("Digite seu nome: ")
   leia(nome)
   limpatela
   escreval("Digite seu salário: ")
   leia(salarioBruto)
   limpatela
   escreval("Houveram quantos dias úteis no mês? (dias trabalhados)")
   leia(diasUteis)
   limpatela
   INSS <- 0.075
   se salarioBruto <= 2571.29 entao
      INSS <- 0.09
   senao
      se salarioBruto <= 3856.94 entao
         INSS <- 0.12
      senao
         INSS <- 0.14
      fimse
   fimse

   Menu()

Fimprocedimento

Procedimento iniciarRapido()
Var
Inicio
   //Timer(130)
   escreval("Iniciando")
   para i de 0 ate 9 faca
      escreva(".")
   fimpara
   limpatela
   escreval()
   limpatela
   escreval("Digite seu salário: ")
   leia(salarioBruto)
   INSS <- 0.075
   se salarioBruto <= 2571.29 entao
      INSS <- 0.09
   senao
      se salarioBruto <= 3856.94 entao
         INSS <- 0.12
      senao
         INSS <- 0.14
      fimse
   fimse

   Menu()

Fimprocedimento



Procedimento calculoDescontos()
Var

Inicio
   FGTSDescontado <- salarioBruto * 0.08
   INSSDescontado <- salarioBruto * INSS
   salarioLiquido <- (salarioBruto - (FGTSDescontado+INSSDescontado+IRRFDescontado))
   valeTransporte <- diasUteis * VTDIARIO
   valeAlimentacao <- diasUteis * VADIARIO
   mostrarResultados()
Fimprocedimento

Procedimento Menu()
Var
   opcao: inteiro
Inicio
   //Timer(130)
   limpatela
   escreval("Carregando")
   para i de 0 ate 9 faca
      escreva(".")
   fimpara
   limpatela
   escreval()
   escreval("Seja bem-vindo(a), ",nome,"!")
   escreval("----------------------------------")
   escreval("             OPÇÕES:")
   escreval("[1] Verificar descontos. ")
   escreval("[2] Trocar usuário. ")
   escreval("[3] Sair. ")
   leia(opcao)
   escolha(opcao)
   caso 1
      calculoDescontos()
   caso 2
      Iniciar()
   caso 3
      interrompa
   fimescolha
Fimprocedimento

Procedimento mostrarResultados()
Var
Inicio
   se salarioLiquido <= 2212.00 entao
      IRRFDescontado <- 0
   senao
      se (salarioLiquido <= 2826.65) ou (salarioLiquido >= 2212.01) entao
         IRRFDescontado <- salarioLiquido * 0.075
      senao
         se (salarioLiquido <= 3751.05) ou (salarioLiquido >= 2826.66) entao
            IRRFDescontado <- salarioLiquido * 0.15
         senao
            se (salarioLiquido <= 4664.68) ou (salarioLiquido >= 3451.06) entao
               IRRFDescontado <- salarioLiquido * 0.225
            senao
               se (salarioLiquido >= 4664.69) entao
                  IRRFDescontado <- salarioLiquido * 0.275
               fimse
            fimse
         fimse
      fimse
   fimse
   limpatela
   escreval("          RESULTADOS:")
   escreval("----------------------------------")
   escreval("Salário Bruto: R$",salarioBruto)
   escreval("Desconto INSS: R$",INSSDescontado)
   escreval("Saiba mais: O desconto do INSS, ou Instituto Nacional do Seguro Social, é uma contribuição obrigatória descontada dos salários para financiar a previdência social, garantindo benefícios como aposentadoria, pensão e auxílio-doença.")
   escreval("Fonte: https://www.gov.br/inss/pt-br/saiba-mais")
   escreval()
   escreval("----------------------------------")
   escreval("Desconto FGTS: R$",FGTSDescontado)
   escreval("Saiba mais: O desconto do FGTS, ou Fundo de Garantia do Tempo de Serviço, é uma contribuição obrigatória do empregador que visa proteger o trabalhador, oferecendo recursos para situações específicas, como demissão sem justa causa e compra da casa própria.")
   escreval("Fonte: https://www.fgts.gov.br/Pages/sobre-fgts/visao-geral.aspx")
   escreval()
   escreval("----------------------------------")
   escreval("Desconto IRRF: R$",IRRFDescontado)
   escreval("Saiba mais: O desconto do IRRF, ou Imposto de Renda Retido na Fonte, é uma dedução obrigatória sobre rendimentos, sendo recolhido diretamente na fonte pagadora, contribuindo para financiar as despesas governamentais.")
   escreval("Fonte: https://www.gov.br/receitafederal/pt-br/assuntos/orientacao-tributaria/tributos/IRRF")
   escreval()
   escreval("----------------------------------")
   escreval("Adicional Vale Transporte: R$",valeTransporte)
   escreval("Saiba mais: O vale-transporte é um benefício opcional que visa subsidiar parcialmente os custos de deslocamento do trabalhador entre sua residência e local de trabalho, promovendo a acessibilidade e mobilidade urbana.")
   escreval("Fonte: ")
   escreval()
   escreval("----------------------------------")
   escreval("Adicional Vale Alimentação: R$",valeAlimentacao)
   escreval("Saiba mais: O vale alimentação é um benefício opcional oferecido pelos empregadores para subsidiar despesas com alimentação do trabalhador, contribuindo para seu bem-estar e garantindo acesso a uma alimentação adequada.")
   escreval("Fonte: ")
   escreval()
   escreval("Deseja repetir operação? ")
   escreval("[1]Sim  [2]Não")
   leia(verificador)
   se verificador = 1 entao
      iniciarRapido()
   senao
      Menu()
   fimse

Fimprocedimento


Inicio
   VTDIARIO <- 10.5
   VADIARIO <- 20
   Iniciar()
Fimalgoritmo