#language: pt

Funcionalidade: Realizar cadastro no site da Casasbahia

#@test
#Cenario: Acessar site com sucesso e realizar castro com sucesso
#  Dado que acesso a "https://www.casasbahia.com.br/"
#  Entao espero visualizar a pagina home
#  Quando clico no "btn_Register"
#  E sou direcionado para a "page_Login"
#  E preencho o "field_Email" com "bruno01@bruno.com"
#  E seleciono o "rb_No_Register"
#  E clico no "btn_Continue"
#  Entao sou direcionado para a "page_Register"

Cenario: Cadastrar usuario na casasbahia
  Dado que acessei a "https://www.casasbahia.com.br/"
  E preenchi todos os campos da pagina da pagina de identificação
  E clico no "btn_Continue"
  E sou direcionado para a "page_Register"
  E preencho o "field_Name" com "nome_Valido"
  E preencho o "field_Cpf" com "cpf_Valido"
  E seleciono o "field_Phone" com "Celular"
  E preencho o "field_DDD" com "ddd_Valido"
  E preencho o "field_Number" com "numero_Valido"
  E seleciono o "field_Phone2" com "Comercial"
  E preencho o "field_DDD2" com "ddd_Valido"
  E preencho o "field_Number2" com "numero_Valido"
  E preencho o "field_Day" com "dia_valido"
  E preencho o "field_Month" com "mes_Valido"
  E preencho o "field_Year" com "ano_Valido"
  E seleciono o "rb_male"
  E preencho o "field_Confirm_Email" com "email_Valido"
  E preencho o "field_Password" com "senha_Valida"
  E preencho o "field_Confirm_Password" com "senha_Valida"
  E não seleciono o "rb_Receive_Offer"
  E não seleciono o "rb_Receive_Sms"
  Quando clico no "btn_Continue_Save"
  Entao confirmo que sou um usario cadastrado "logado"
