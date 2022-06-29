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

    def wait_page_load(count=5)
      init = 0
      while(init <= count)
        if(page.execute_script("return document.readyState").eql?('complete'))
          break
        elsif init == 5
          raise ArgumentError.new("Page not loaded fully")
        end
        init += 1
      end
    end

end

  