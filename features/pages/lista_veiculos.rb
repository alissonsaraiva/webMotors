class ListaVeiculos < SitePrism::Page

    element :card_anuncio, :xpath, '//*[@id="root"]/main/div[1]/div[3]/div[2]/div/div[1]/div/div[1]/div/div[2]/a[1]'
    
    def clicar_card_anuncio
        card_anuncio.click
    end

end