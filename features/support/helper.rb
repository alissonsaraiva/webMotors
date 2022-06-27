module Helper

    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "results/screenshots/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)
        #embed(foto,'image/png','Clique aqui')
        file = File.open(foto)
        attach(file, 'image/png')
    end
    
end