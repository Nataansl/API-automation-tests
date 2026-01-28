# =========================
# GET – Buscar usuário
# =========================

Dado('que o usuario deseja buscar um usuario especifico') do
  @get_url = Employee_Requests.new
end

Quando('ele faz uma busca do nome') do
  @list_employee = @getlist.find_employee
end

Entao('abre o cadastro do usuario buscado') do
  expect(@response.code).to eq 200

  body = @response.parsed_response
  expect(body).to have_key('data')
  expect(body['data']).to have_key('id')

  # guarda o id para reutilizar no PUT
  @user_id = body['data']['id']
end




# =========================
# POST – Criar funcionário
# =========================

Dado('que o usuario deseja cadastrar um novo funcionario') do
  @post_url = 'URL_CREATE'
  @assert = Assertions.new
end

Quando('ele preenche os dados obrigatorios') do
  @create_employee = @create.create_employee(DATABASE[:name], DATABASE[:salary], DATABASE[:age])
  puts @create_employee.body
end

Entao('o sistema salva o novo cadastro do funcionario') do
  @assert.request_successful(@create_employee.code, @create_employee.message)
  expect(@create_employee.code).to eq 200
  expect(@create_employee.parsed_response['name']).to eq 'Teste API'
end




# =========================
# PUT – Atualizar funcionário
# =========================

Dado('que o usuario deseja alterar os dados do cliente') do
  @request = Employee_Requests.new
end

Quando('ele modifica as informacoes necessarias') do
  @update_employee = @request.update_employee(@request.find_employee['data']['id'], 'Teste Alterado', '6000', '35')
  puts @update_employee 

Entao('o sistema atualiza o cadastro do cliente') do
  expect(@update_employee.code).to eq 200
  expect(@update_employee.parsed_response['name']).to eq 'Teste Alterado'
end




# =========================
# DELETE – Deletar usuário
# =========================

Dado('que o usuario deseja deletar um usuario especifico') do
 @request = Employee_Requests.new
end

Quando('ele faz a requisicao de exclusao') do
  @delete_response = @request.delete_employee(@request.find_employee['data']['id'])
end

Entao('o sistema remove o cadastro do usuario') do
  expect(@delete_response.code).to eq 200
  expect(@delete_response.msg).to eq 'User deleted successfully'
end


