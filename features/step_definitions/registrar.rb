Dado("que estou na página inicial") do
    visit ''
  end
  
  Quando("acesso a pagina de registro") do
    find(".login").click
  end
  
  Entao("eu crio uma conta com o email {string}") do |email|
    @email = email
    find('#email_create').set @email
    find('[name="SubmitCreate"]').click
  end
  
  Entao("o sistema apresenta o seguinte texto {string}") do |texto|
    @texto = texto
    @continuar = false
    expect(page).to have_content @texto
    if @texto == "YOUR PERSONAL INFORMATION"
        @continuar = true
    end
  end
  
  Entao("informo meus dados: {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}") do |first, last, pass, dia_aniversario, mes_aniversario, ano_aniversario, company, address_01, address_02, city, nr_state, postal_code, additional_info, home_phone, mobile_phone|
    if @continuar == true
        @first = first
        @last = last
        @pass = pass
        @dia_aniversario = dia_aniversario
        @mes_aniversario = mes_aniversario
        @ano_aniversario = ano_aniversario
        @company = company
        @address_01 = address_01    
        @address_02 = address_02
        @city = city
        @nr_state = nr_state
        @postal_code = postal_code
        @additional_info = additional_info
        @home_phone = home_phone
        @mobile_phone = mobile_phone
        
        @registro = Registro.new
        @registro.preencher_formulario(@first,@last,@pass,@dia_aniversario,@mes_aniversario,@ano_aniversario,@company,@address_01,@address_02,@city,@nr_state,@postal_code,@additional_info,@home_phone,@mobile_phone)
    else
        puts "Concluido"
    end
  end

  Entao("o sistema apresenta a seguinte mensagem {string}") do |mensagem_final|
    @mensagem_final = mensagem_final
    expect(page).to have_content @mensagem_final
  end