module PageObject  
    
    def class_support
      ClassSupport.new
    end

    def home_webmotors
      HomeWebMotors.new
    end
    
    def lista_veiculos
      ListaVeiculos.new
    end

    def detalhe_veiculo
      DetalheVeiculo.new
    end

end

  