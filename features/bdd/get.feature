
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

@cenario_tres
 Cenario: Alterar dados do cliente 
  Dado que o usuario deseja alterar os dados do cliente
  Quando ele modifica as informacoes necessarias
  Entao o sistema atualiza o cadastro do cliente

@cenario_quatro
 Cenario: Deletar um usuario 
  Dado que o usuario deseja deletar um usuario especifico
  Quando ele faz a requisicao de exclusao
  Entao o sistema remove o cadastro do usuario  



  