class HomePage

    def initialize
        @comprar_carros = 'Comprar carros'
        @comprar_motos = 'Comprar motos'
        @searchBar = '#searchBar'
        @searchBar_results = '.SearchBar__results__result__name'
      end

      #page.find('div', text: 'Expected content')

      def comprar_carros
        find('div', text: 'Comprar carros')
      end

      def preencher_searchBar(texto)
        find('#searchBar').set texto
      end

end