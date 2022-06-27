# Poc WebMotors
> API & WEB

## Índices
- [Guia de instalação](#installation)
- [FAQ](#faq)
- [Resources](#resources)

## Guia de instalação
- Todo o código do projeto se encontra no repositório

1. Dependências Globais

    * Instalar o [Ruby + Devkit] link para download =>(https://rubyinstaller.org/downloads/)
    - Versão utilizada no projeto 3.1.2

    * Ou Instalar o Ruby via [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    * Instalar Bundler (Sudo pode ser necessário)
    - Bundler é o gerenciador de gemas do Ruby, oferece um ambiente consistente para o gerenciamento e instalação
    das dependencias do projeto.
    ```
    $ gem install bundler
    ```
2. Dependências do Projeto

	Instalar pacotes (Usar sudo caso necessário)
	```
	$ bundle install
	```

### Executar Testes
  Para executar o teste de API:
  ```
  $ cucumber -t @teste_api_webmotors
  ```
  Para executar o teste de API:
  ```
  $ cucumber -t @teste_web_webmotors
  ```


## FAQ

- **Sessão para perguntas frequentes**

# WIP(Work in progress)
- Duvidas, criticas e sugestões são bem vindas

### Resources

##### [Cucumber Documentation](https://cucumber.io/docs/reference)

##### [Ruby Documentation](http://ruby-doc.org/)

##### [Stack Overflow](http://stackoverflow.com/)
