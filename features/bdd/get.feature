
#language: pt

 Funcionalidade: Consultar Dados
  Como o nome do usuario 
  Eu quero buscar as informacoes especificas
  Para visualizar os dados do usuario

 Cenario: Localizar um usuario 
  Dado que o usuario deseja buscar um usuario especifico
  Quando ele faz uma busca do nome
  Entao abre o cadastro do usuario buscado 
      
 @cenario_dois     
 Cenario: Cadastrar funcionario 
  Dado que o usuario deseja cadastrar um novo funcionario
  Quando ele preenche os dados obrigatorios
  Entao o sistema salva o novo cadastro do funcionario
