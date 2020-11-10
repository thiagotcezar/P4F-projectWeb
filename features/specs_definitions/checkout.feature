#language: pt
#encoding: utf-8

Funcionalidade: Realizar compra no site My Store
  Eu como usuario 
  Quero Realizar uma compra de roupas online
  Para atualizar meu guarda-roupa

  @done
  Cenario: Realizar compra com usuário não cadastrado (Primeiro Acesso)
    Dado que eu esteja na home do site
    E adicione ao carrinho de compras um ou mais produtos
    Quando eu iniciar o processo de checkout
    E criar um novo usuário
    E preencher os dados do endereço de entrega
    E confirmar a entrega da correspondência
    E preencher os dados de pagamento
    Entao visualizo a mensagem "Your order on My Store is complete" confirmando minha compra

  @done
  Cenario: Tentar realizar uma compra sem adicionar produtos aos carrinho
    Dado que eu esteja na home do site
    Quando clicar sobre o carrinho de compras
    Então visualizo a mensagem "Your shopping cart is empty." alertando que meu carrinho está vazio


  

  