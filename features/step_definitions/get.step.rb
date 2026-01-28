Dado('que o usuario deseja buscar um usuario especifico') do
  @get_url = 'URL_DE_BUSCA_AQUI'
end

Quando('ele faz uma busca do nome') do
  @response = HTTParty.get(@get_url)
end

Entao('abre o cadastro do usuario buscado') do
  # usa a variável @response que foi preenchida no step anterior
  expect(@response.code).to eq 404

  body = @response.parsed_response
  # validar se o JSON tem a chave 'status' e se é 'success'
  expect(body).to have_key('status')
  expect(body['status']).to eq 'success'
end


Dado('que o usuario deseja cadastrar um novo funcionario') do
  @post_url = 'URL_DE_CADASTRO_AQUI'
end

Quando('ele preenche os dados obrigatorios') do
  @create_emplyee = HTTParty.post(@post_url, :headers => { 'Content-Type' => 'application/json' }, body: {
    name: 'Teste API',
    salary: '1234',
    age: '30'
  }), to_json

   puts @create_emplyee
end

Entao('o sistema salva o novo cadastro do funcionario') do
expect(@create_emplyee.code).to eql (200)
expect(@create_emplyee.msg).to eql 'OK'
expect(@create_emplyee["status"]).to eql 'success'
expect(@create_emplyee["message"]).to eql 'Successfully! Record has been added.'
expect(@create_emplyee["data"]["name"]).to eql 'Teste API'
expect(@create_emplyee["data"]["salary"]).to eql '1234'
expect(@create_emplyee["data"]["age"]).to eql '30'
end
