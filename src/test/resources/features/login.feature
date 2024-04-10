#language:pt

Funcionalidade: Login

  Contexto:
    Dado que a modal estea sendo exibida

  Cenario: Fechar a modal ao clicar for da mesma
    Quando for realiazdo um clique fora da modal
    Então a janela modal deve ser fechada

  Cenario: Fechar a modal ao clicar no icone fechar
    Quando for realizado um clique no icone de fechar modal
    Então a janela modal deve ser fechada

  Cenario: Link Create New Account
    Quando for relizado um clique no link Create New Account
    Então a pagina Create Ne Account deve ser exibida

  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Quando for realizado o clique no botao sign in
    Então deve ser possivel logar no sistema

    Exemplos:
      | identificacao       | login   | password | remember |
      | campos obrigatorios | chronos | senha    | false    |
      | todos os campos     | chronos | senha    | true     |

  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Quando for realizado o clique no botão sign in
    Então o sistema devera exibir uma mensagem de erro

    Exemplos:
      | identificaco     | login    | password | remember |
      | usuario invalido | invalido | senha    | false    |
      | senha invalida   | chronos  | invalida | false    |

  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Entao o botao sign in deve permanecer desabilitado

    Exemplos:
      | identificacao      | login   | password | remember |
      | usuario em branco  |         | senha    | false    |
      | password em branco | chronos |          | false    |

