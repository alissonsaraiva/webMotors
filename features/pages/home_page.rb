class HomeWebMotors < SitePrism::Page
    set_url '/'

    element :botao_comprar_carros, :xpath, '//div[@class="NavBar--tabs"]/h1[1]'
    element :searchBar, '#searchBar'
    element :searchBarResult, :xpath, '//a[@class="SearchBar__results__result"][1]'
    element :lista_veiculos_encontrados, '[data-test-id="found-ads"]'
    element :botao_ver_ofertas, '.Button.Button--red-home'


    def clicar_botao_comprar_carros
        botao_comprar_carros.click
    end

    def clicar_ver_ofertas
        botao_ver_ofertas.click
    end

    def preencher_searchbar(veiculo)
        searchBar.set veiculo
    end

    def clicar_searchbar_result
        searchBarResult.click
    end


end