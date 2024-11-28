Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024
Var
// Seção de Declarações das variáveis 
opcao: inteiro
receita, despesas, saldo, opcao2, estoqueqtd: inteiro
TipoEquipamento, TipoRecurso, NomeProcesso, StatusProcesso, RecursosAlocados: Caractere
DataUltimaManutencao, DataAtual: inteiro
QuantidadeRecursoDisponivel, QuantidadeRecursoAlocado, QuantidadeRecursoRestabelecido : inteiro
NecessitaManutencao: logico
nome_candidato: vetor [1 .. 10]  de inteiro
cargo_candidato: vetor [1 .. 10] de inteiro
idade_candidato: vetor [1 .. 10] de inteiro
num_candidatos, i: inteiro
Campanhas: vetor[1..10] de caractere
Mercado: vetor[1..10] de caractere
Estrategias: vetor[1..10] de caractere
TotalCampanhas, TotalMercado, TotalEstrategias, Opcao3 : inteiro
Descricao: caractere
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
 repita
   escreval("")
   escreval("========== GERENCIAMENTO BUSSCAR ==========")
   escreval("1 - Financeiro")
   escreval("2 - Infraestrutura")
   escreval("3 - RH")
   escreval("4 - Marketing")
   escreval("5 - Sair")
   escreval("=======================================")
   escreval("")
   escreva("Escolha uma opção: ")
   leia(Opcao)

   escolha opcao

   caso 1
      despesas <- 0
      saldo <- 0
      receita <- 0
      estoqueqtd <- 0

      repita

         escreval("")
         escreval("[1] Para registrar a receita:")
         escreval("[2] Para registrar as despesas:")
         escreval("[3] Para registrar o estoque:")
         escreval("[4] Para ver o saldo:")
         escreval("[5] Para ver o estoque:")
         escreval("[6] Para sair:")
         leia(opcao2)

         escolha opcao2

         caso 1
            escreval("Digite a receita: ")
            leia(receita)

         Caso 2
            escreval("Digite as despesas: ")
            leia(despesas)

         caso 3
            escreva("Digite a quantidade de estoque.")
            leia(estoqueqtd)

         caso 4
            saldo <- receita - despesas
            escreval("O saldo é de: ", saldo)

         caso 5
            escreval("O estoque é de: ", estoqueqtd)

         caso 6
            escreval("Sistema encerrando...")

         fimescolha
      ate opcao2 = 6
   fimescolha

caso 2
   Se (DataAtual - DataUltimaManutencao) >= 30 entao
      NecessitaManutencao <- Verdadeiro
      Escreva("O equipamento ", TipoEquipamento, " necessita de manutenção.")
      senao
      Escreva("O equipamento ", TipoEquipamento, " não necessita de manutenção.")
   FimSe
   Se NecessitaManutencao Então
      DataUltimaManutencao <- DataAtual
      Escreva("Manutenção realizada no equipamento ", TipoEquipamento, " em ", DataAtual)
   FimSe
   Se QuantidadeRecursoAlocado <= QuantidadeRecursoDisponivel Então
      QuantidadeRecursoDisponivel <- QuantidadeRecursoDisponivel - QuantidadeRecursoAlocado
      Escreva(QuantidadeRecursoAlocado, " unidades de ", TipoRecurso, " alocadas com sucesso.")
      RecursosAlocados <- QuantidadeRecursoAlocado
      Senão
      Escreva("Não há recursos suficientes de ", TipoRecurso, ". Disponível: ", QuantidadeRecursoDisponivel)
   FimSe
   Escreva("Processo: ", NomeProcesso, " - Status: ", StatusProcesso)
   Escreva("Recurso ", TipoRecurso, ": ", QuantidadeRecursoDisponivel, " unidades disponíveis.")
   StatusProcesso <- "Finalizado"
   Escreva("Processo ", NomeProcesso, " finalizado.")

caso 3
   escreval("Digite o número de candidatos a serem cadastrados: ")
   leia(num_candidatos)

   para i de 1 ate num_candidatos faca
      escreval("Digite o nome do candidato ", i, ": ")
      leia(nome_candidato[i])
      escreval("Digite a idade do candidato ", i, ": ")
      leia(idade_candidato[i])
      escreval("Digite o cargo pretendido por ", nome_candidato[i], ": ")
      leia(cargo_candidato[i])
   fimpara


   escreva("Lista de candidatos cadastrados:")
   para i de 1 ate num_candidatos faca
      escreval("Candidato: ", nome_candidato[i])
      escreval("Idade: ", idade_candidato[i], " anos")
      escreval("Cargo pretendido: ", cargo_candidato[i],)
      escreval("Cadastro foi concluido com sucesso!")
   fimpara

caso 4

   TotalCampanhas <- 0
   TotalMercado <- 0
   TotalEstrategias <- 0
   repita

      escreval("")
      escreval("========== ÁREA DE MARKETING ==========")
      escreval("1 - Desenvolver Campanha de produto")
      escreval("2 - Adicionar analise do Mercado de consruções")
      escreval("3 - Criar Estratégia para o setor de infraestrutura")
      escreval("4 - Relatórios")
      escreval("5 - Sair")
      escreval("=======================================")
      escreval("")
      escreva("Escolha uma opção: ")
      leia(Opcao)
      escolha opcao
      caso 1
         escreva("Descreva a campanha do produto Busscar: ")
         leia(Descricao)
         TotalCampanhas <- TotalCampanhas + 1
         Campanhas[TotalCampanhas] <- Descricao
         escreval("Campanha adicionada com sucesso!")
      caso 2
         escreva("Insira os detalhes da análise de mercado: ")
         leia(Descricao)
         TotalMercado <- TotalMercado + 1
         Mercado[TotalMercado] <- Descricao
         escreval("Análise de mercado registrada com sucesso!")
      caso 3
         escreva("Descreva a estratégia para o setor--: ")
         leia(Descricao)
         TotalEstrategias <- TotalEstrategias + 1
         Estrategias[TotalEstrategias] <- Descricao
         escreval("Estratégia criada com sucesso!")

      caso 4
         escreval("")
         escreval("========== RELATÓRIOS ==========")
         escreval("Campanhas Busscar: ")
         para i de 1 ate TotalCampanhas faca
            escreval(i, ": ", Campanhas[i])
         fimpara

         escreval("Análises de Mercado: ")
         para i de 1 ate TotalMercado faca
            escreval(i, ": ", Mercado[i])
         fimpara
         escreval("Estratégias: ")
         para i de 1 ate TotalEstrategias faca
            escreval(i, ": ", Estrategias[i])
         fimpara
         escreval("================================")
         escreval("")
      caso 5
         escreval("Encerrando o sistema...")
      outrocaso
         escreval("Opção inválida! Tente novamente.")
      fimescolha
   ate Opcao3 = 5

caso 5
   escreval("Encerrando o sistema...")
outrocaso
   escreval("Opção inválida! Tente novamente.")
fimescolha
ate opcao = 5A


Fimalgoritmo