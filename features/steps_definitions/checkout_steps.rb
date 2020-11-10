Dado("que eu esteja na home do site") do
  home.load
end

E("adicione ao carrinho de compras um ou mais produtos") do
  baseActions.scrollDown(3)
  home.selectModel(0)
  home.clickAddCart
  home.clickContinuShopping
  home.selectModel(2)
  home.clickAddCart
  home.clickButtonProceedCheckout
end

Quando("eu iniciar o processo de checkout") do
  baseActions.scrollDown(1)
  home.clickProceedCheckout
end

E("criar um novo usuário") do
  baseActions.scrollDown(1)
  address.fieldEmail
  address.submitCreateEmail
  address.selectMr
  baseActions.scrollDown(2)
  address.createFirstName
  address.createLastName
  address.createPass
  address.selectDateOfBirth
end

E("preencher os dados do endereço de entrega") do
  baseActions.scrollDown(3)
  address.createFirstNameAddress
  address.createLastNameAddress
  address.createStreetAddress
  address.createCityAddress
  address.selectState
  address.createZipPostalAddress
  address.selectCountry
  address.createMobileNumber
  address.createNameAddress
  address.clickSubmitAccount
  address.clickProceedCheckoutAddress
end

E("confirmar a entrega da correspondência") do
  baseActions.scrollDown(3)
  address.clickCheckBoxShipping
  address.clickProceedCheckoutShipping
end

E("preencher os dados de pagamento") do
  baseActions.scrollDown(3)
  pay.clickPayBank
  pay.clickConfirmOrder
end

Entao("visualizo a mensagem {string} confirmando minha compra") do |messageConfirmOrder|
  baseActions.scrollDown(1)
  expect(pay.messageConfirmOrder).to have_content messageConfirmOrder
end

Quando("clicar sobre o carrinho de compras") do
  home.clickIconCart
end

Então("visualizo a mensagem {string} alertando que meu carrinho está vazio") do |messageCartEmpty|
  expect(home.msgCartEmpty).to have_content messageCartEmpty
end