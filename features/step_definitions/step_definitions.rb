Dado("que acesso a {string}") do |url|
visit (url)
end

Entao("espero visualizar a pagina home") do
assert_selector(EL["soon_initial"])
end

Quando("clico no {string}") do |btn_Register|
find(EL[btn_Register]).click
end

Quando("sou direcionado para a {string}") do |page_Login|
 assert_selector(EL[page_Login])
end

Quando("preencho o {string} com {string}") do |field, value|
find(EL[field]).set(EL[value])
end

Quando("seleciono o {string}") do |rb_No_Register|
find(EL[rb_No_Register]).click
end

Dado("que acessei a {string}") do |page_Register|
visit (page_Register)
end

Dado("preenchi todos os campos da pagina da pagina de identificação") do
  find(EL["btn_Register"]).click
  assert_selector(EL["page_Login"])
  find(EL["field_Email"]).set(EL["email_Valido"])
  find(EL["rb_No_Register"]).click
end

Quando("seleciono o {string} com {string}") do |field, value|
find(EL[field]).select(value)
end

Quando("não seleciono o {string}") do |rb|
find(EL[rb]).click
end

Entao("confirmo que sou um usario cadastrado {string}") do |logado|
  assert_selector(EL[logado],wait: 15)
end
