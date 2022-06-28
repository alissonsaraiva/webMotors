#language: pt

@teste_api_webmotors
Funcionalidade: Validar a API da WebMotors

@get_make
Cenário: Consultar o serviço de marcas de veículos
    Dado que eu desejo consultar o serviço de marcas de veículos
    Quando realizo uma requisição para consultar marcas de veículos
    Então devo receber uma lista de marcas de veículos
      | Name      |
      | Chevrolet |
      | Honda     |
      | Ford      |

@get_model
Esquema do Cenário: Consultar serviço de modelos de veículos
    Dado que eu desejo consultar o serviço de modelos de veículos filtrando pela marca
    Quando eu realizo uma requisição filtrando pelo <id> da marca
    Então devo receber o modelo do veículo de acordo com o filtro da marca informado
      | Name  |
      | Agile |
      | Astra |
      | Onix  |
    Exemplos:
      |  id   |
      |  1    |

@get_version
Esquema do Cenário: Consultar serviço de versão de modelos de veículos
    Dado que eu desejo consultar a versão de modelos de veículos
    Quando eu realizo uma requisição filtrando pelo <id> do modelo do veículo
    Então devo receber a versão de acordo com o filtro de modelo informado
        |            Name                |
        | 1.5 DX 16V FLEX 4P AUTOMÁTICO  |
    Exemplos:
        |             id            |
        |             1             |

@get_vehicles
Esquema do Cenário: Consultar serviço de informações dos veículos filtrando por pages
    Dado que eu quero consultar os veículos por pages
    Quando eu realizo uma requisição filtrando pela <page>
    Então devo receber as informações do veículo de acordo com a page informada
      | Make       |   Model    | Version                                 | 
      | Honda      |   City     | 2.0 EXL 4X4 16V GASOLINA 4P AUTOMÁTICO  |
      | Mitsubishi |   Lancer   | 2.0 EVO 4P AUTOMÁTICO                   | 
    Exemplos:
        |             page                 |
        |              1                   |

@verifica_contrato
Cenário: verificar contrato da API de marcas de veículos
  Dado que eu desejo consultar o serviço marcas de veículos 
  Quando realizo uma requisição para consultar as marcas de veículos
  Então verifico o contrato do serviço de marcas de veículos