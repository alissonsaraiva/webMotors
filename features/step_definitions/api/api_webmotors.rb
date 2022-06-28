Dado('que eu desejo consultar o serviço de marcas de veículos') do
    class_support.get_make
end
  
Quando('realizo uma requisição para consultar marcas de veículos') do
    @response_make_get = class_support.make_get
end
  
Então('devo receber uma lista de marcas de veículos') do |table|
   @data = table.hashes
   expect(@response_make_get.code).to eql(200)
   expect(@response_make_get.parsed_response[0]).to include(@data[0]) #Chevrolet
   expect(@response_make_get.parsed_response[1]).to include(@data[1]) #Honda
   expect(@response_make_get.parsed_response[2]).to include(@data[2]) #Ford
end
  
Dado('que eu desejo consultar o serviço de modelos de veículos filtrando pela marca') do
    class_support.get_model
end
  
Quando('eu realizo uma requisição filtrando pelo {string} da marca') do |make|
    @response_get_model_by_make = class_support.get_by_make(make)
end
  
Então('devo receber o modelo do veículo de acordo com o filtro da marca informado') do |table|
   @data = table.hashes
   expect(@response_get_model_by_make.code).to eql(200)
   expect(@response_get_model_by_make.parsed_response[0]).to include(@data[0]) #Agile
   expect(@response_get_model_by_make.parsed_response[1]).to include(@data[1]) #Astra
   expect(@response_get_model_by_make.parsed_response[2]).to include(@data[2]) #Onix
end
  
Dado('que eu desejo consultar a versão de modelos de veículos') do
    class_support.get_version
end

Quando('eu realizo uma requisição filtrando pelo {string} do modelo do veículo') do |id|
    @response_get_version_by_model = class_support.get_by_model(id)
end
  
Então('devo receber a versão de acordo com o filtro de modelo informado') do |table|
    @data = table.hashes
    expect(@response_get_version_by_model.code).to eql(200)
    expect(@response_get_version_by_model.parsed_response[0]).to include(@data[0]) #1.5 DX 16V FLEX 4P AUTOMÁTICO
end
  
Dado('que eu quero consultar os veículos por pages') do
    class_support.get_vehicle
end
  
Quando('eu realizo uma requisição filtrando pela {string}') do |page|
    @response_get_vehicle_by_page = class_support.get_by_page(page)
end
  
Então('devo receber as informações do veículo de acordo com a page informada') do |table|
    @data = table.hashes
    expect(@response_get_vehicle_by_page.code).to eql(200)
    expect(@response_get_vehicle_by_page.parsed_response[0]).to include(@data[0])
    expect(@response_get_vehicle_by_page.parsed_response[1]).to include(@data[1])
end

Dado('que eu desejo consultar o serviço marcas de veículos') do
    class_support.get_make
end
  
Quando('realizo uma requisição para consultar as marcas de veículos') do
    @response_make_get = class_support.make_get
end
  
Então('verifico o contrato do serviço de marcas de veículos') do
    hash = @response_make_get.parsed_response[0]
    expect(@response_make_get.code).to eql(200)
    expect(hash[hash.keys[0]]).to be_a_kind_of(Integer) #ID
    expect(hash[hash.keys[1]]).to be_a_kind_of(String) #NAME
    expect(hash[hash.keys[0]]).to eql 1
    expect(hash[hash.keys[1]]).to eql "Chevrolet"
end