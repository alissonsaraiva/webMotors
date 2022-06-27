#language: pt

@teste_web_webmotors
Funcionalidade: Realizar pesquisa de carros no portal da Webmotors

@pesquisa_por_modelo
Esquema do Cenário: Pesquisa de carro por modelo
  Dado que desejo pesquisar um veículo por modelo
  Quando seleciono o tipo de veículo carro
  E busco pelo modelo do carro
  Então o sistema apresenta a lista de veículos

@verifica_contato_vendedor
Esquema do Cenário: Verifica o contato do vendedor num determinado anúncio
  Dado que desejo visualizar o contato do vendedor num determinado anúncio
  Quando clico num determinado anúncio
  Então visualizo o contato do vendedor

@verifica_preco
Esquema do Cenário: Verifica o preço do veículo no anúncio
  Dado que desejo visualizar o preço do veículo num determinado anúncio
  Quando clico num anúncio
  Então visualizo o preço do veículo
    