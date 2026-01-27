Dado('que o usuario deseja buscar um usuario especifico') do
  @get_url = HTTParty.get("https://jsonplaceholder.typicode.com/users/1")
end

Quando('ele faz uma busca do nome') do
  @list = HTTParty.get("https://jsonplaceholder.typicode.com/users")
end

Entao('abre o cadastro do usuario buscado') do
  expect(@get_url.message).to eq 'OK'
  expect(@list.code).to eq 200
end