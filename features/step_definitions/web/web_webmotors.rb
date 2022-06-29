Dado('que desejo pesquisar um veículo por modelo') do
    home_webmotors.load
    wait_page_load
end
  
Quando('seleciono o tipo de veículo carro') do
    home_webmotors.clicar_botao_comprar_carros
end
  
Quando('busco pelo modelo do carro') do
    home_webmotors.preencher_searchbar 'corolla'
    home_webmotors.clicar_searchbar_result
end
  
Então('o sistema apresenta a lista de veículos') do
    wait_page_load
    expect(home_webmotors.has_lista_veiculos_encontrados?).to eq true    
end
  
Dado('que desejo visualizar o contato do vendedor num determinado anúncio') do
    home_webmotors.load
    wait_page_load
    home_webmotors.clicar_ver_ofertas
end
  
Quando('clico num determinado anúncio') do
    lista_veiculos.clicar_card_anuncio
    
end
  
Então('visualizo o contato do vendedor') do
    new_window = windows.last
    page.within_window new_window do
        wait_page_load
        expect(detalhe_veiculo.has_contato_vendedor?).to eq true
    end
end
  
Dado('que desejo visualizar o preço do veículo num determinado anúncio') do
    home_webmotors.load
    wait_page_load
    home_webmotors.clicar_ver_ofertas
end

Quando('clico num anúncio') do
    lista_veiculos.clicar_card_anuncio
end
  
Então('visualizo o preço do veículo') do
    new_window = windows.last
    page.within_window new_window do
        wait_page_load
        expect(detalhe_veiculo.has_preco_veiculo?).to eq true
    end
end