#language: pt
@registrar

Funcionalidade: Registrar no e-commerce

Esquema do Cenario: Acessar e cadastrar informações
    Dado que estou na página inicial 
    Quando acesso a pagina de registro
    Entao eu crio uma conta com o email "<email>"
    E o sistema apresenta o seguinte texto "<texto>"
    E informo meus dados: "<first_name>", "<last_name>", "<password>", "<dia_aniversario>", "<mes_aniversario>", "<ano_aniversario>", "<company>", "<address_01>", "<address_02>", "<city>", "<nr_state>", "<postal_code>", "<additional_info>", "<home_phone>", "<mobile_phone>"
    E o sistema apresenta a seguinte mensagem "<mensagem_final>"

Exemplos:
| email                 |texto                     | first_name | last_name| password |dia_aniversario|mes_aniversario|ano_aniversario| company  | address_01                         | address_02                                   | city     |nr_state| postal_code| additional_info| home_phone| mobile_phone| mensagem_final|
|                       |Invalid email address.    |            |          |          |               |               |               |          |                                    |                                              |          |        |            |                |           |             ||
|danilosilva@gmail      |Invalid email address.    |            |          |          |               |               |               |          |                                    |                                              |          |        |            |                |           |             ||
|danilosilva2gmail.com  |Invalid email address.    |            |          |          |               |               |               |          |                                    |                                              |          |        |            |                |           |             ||
|ttomascaost16@gmail.com|YOUR PERSONAL INFORMATION |            | Silva    | 123456789|15             |7              |25             | Stefanini| Estância - Planaltina-DF           |Estância                                      |Planaltina|2       |73401       |  Automação     |6134893362 |6199554275   |firstname is required.|
|ttomascaost16@gmail.com|YOUR PERSONAL INFORMATION |João        |          | 123456789|15             |7              |25             | Stefanini| Estância - Planaltina-DF           |Estância                                      |Planaltina|2       |73401       |  Automação     |6134893362 |6199554275   |lastname is required|
|ttomascaost16@gmail.com|YOUR PERSONAL INFORMATION |João        | Silva    |          |15             |7              |25             | Stefanini| Estância - Planaltina-DF           |Estância                                      |Planaltina|2       |73401       |  Automação     |6134893362 |6199554275   |passwd is required.|
|ttomascaost16@gmail.com|YOUR PERSONAL INFORMATION |João        | Silva    | 123456789|15             |7              |25             | Stefanini|                                    |Estância                                      |Planaltina|2       |73401       |  Automação     |6134893362 |6199554275   |address1 is required.|
|ttomascaost16@gmail.com|YOUR PERSONAL INFORMATION |João        | Silva    | 123456789|15             |7              |25             | Stefanini| Estância - Planaltina-DF           |Estância                                      |          |2       |73401       |  Automação     |6134893362 |6199554275   |city is required.|
|ttomascaost16@gmail.com|YOUR PERSONAL INFORMATION |João        | Silva    | 123456789|15             |7              |25             | Stefanini| Estância - Planaltina-DF           |Estância                                      |Planaltina|2       |73401965    |  Automação     |6134893362 |6199554275   |The Zip/Postal code you've entered is invalid. It must follow this format: 00000|
|ttomascaost16@gmail.com|YOUR PERSONAL INFORMATION |João        | Silva    | 123456789|15             |7              |25             | Stefanini| Estância - Planaltina-DF           |Estância                                      |Planaltina|        |73401       |  Automação     |6134893362 |6199554275   |This country requires you to choose a State.|
|ttomascaost16@gmail.com|YOUR PERSONAL INFORMATION |João        | Silva    | 123456789|15             |7              |25             | Stefanini| Estância - Planaltina-DF           |Estância                                      |Planaltina|2       |73401       |  Automação     |6134893362 |6199554275   |Welcome to your account. Here you can manage all of your personal information and orders.|

