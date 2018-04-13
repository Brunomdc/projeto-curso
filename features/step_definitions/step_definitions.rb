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

Quando("preencho o {string} com {string}") do |field_Email, email|
find(EL[field_Email]).set(email)
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
  find(EL["field_Email"]).set("bruno01@bruno.com")
  find(EL["rb_No_Register"]).click
end

Quando("preencho o {string}") do |campos|
find(EL[campos]).set()
end

Quando("seleciono o {string} com {string}") do |opcao, nome|
find(EL[opcao]).click(nome)
end

Quando("não seleciono o {string}") do |rb|
find(EL[rb]).click
end
