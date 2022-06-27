class ClassSupport
    
    def montar_url(param)
        url_default = CONFIG['url_api_defaut']
        params = CONFIG['params'][param]
        url_default + params
    end
    
    def get(get_url)
        HTTParty.get(get_url)
    end

    def get_make
        $get_url = montar_url('make') 
    end
    
    def get_model
        $get_url = montar_url('model')
    end
    
    def get_version
        $get_url = montar_url('version')
    end
    
    def get_vehicle
        $get_url = montar_url('vehicle')
    end
    
    def make_get
        get($get_url)
    end
      
    def get_by_make(make)
        $get_url = $get_url.gsub('{id_model}', make.to_s)
        retorno = get($get_url)
    end

    def get_by_model(model)
        $get_url = $get_url.gsub('{id_model}', model.to_s)
        retorno = get($get_url)
    end

    def get_by_page(page)
        $get_url = $get_url.gsub('{id_model}', page.to_s)
        retorno = get($get_url)
    end

end