class Registro < SitePrism::Page

    element :first_name, '#customer_firstname'
    element :last_name, '#customer_lastname'
    element :password, '#passwd'
    element :company, '#company'
    element :address_01, '#address1'
    element :address_02, '#address2'
    element :city, '#city'
    element :postal_code, '#postcode'
    element :additional_info, '#other'
    element :home_phone, '#phone'
    element :mobile_phone, '#phone_mobile'
    element :registrar, '#submitAccount'

    def preencher_formulario(p_first_name, p_last_name, p_password, p_dia_aniversario, p_mes_aniversario, p_ano_aniversario, p_company, p_address_01, p_address_02, p_city, p_nr_state, p_postal_code, p_additional_info, p_home_phone, p_mobile_phone)
        first_name.set p_first_name
        last_name.set p_last_name
        password.set p_password
        all('#days option')[p_dia_aniversario.to_i].select_option
        all('#months option')[p_mes_aniversario.to_i].select_option
        all('#years option')[p_ano_aniversario.to_i].select_option
        company.set p_company
        address_01.set p_address_01
        address_02.set p_address_02
        city.set p_city
        all('#id_state option')[p_nr_state.to_i].select_option
        postal_code.set p_postal_code
        additional_info.set p_additional_info
        home_phone.set p_home_phone
        mobile_phone.set p_mobile_phone

        registrar.click
        sleep(3)
    end
end
