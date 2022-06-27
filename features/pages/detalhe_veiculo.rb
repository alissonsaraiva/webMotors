class DetalheVeiculo < SitePrism::Page

    element :contato_vendedor, '#VehicleSellerInformationPhone_'
    element :preco_veiculo, '#vehicleSendProposalPrice'

    def verifica_contato_vendedor
        expect(page).to have_selector(contato_vendedor)
    end

    def verifica_preco_veiculo
        expect(page).to have_selector(preco_veiculo)
    end

end