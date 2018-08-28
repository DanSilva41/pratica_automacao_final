After do |scenario|
    nome_arquivo = scenario.name.tr(' ', '_').downcase!
    shot = "logs/shots/#{nome_arquivo}.png"
    page.save_screenshot(shot)
    embed(shot, 'image/png', 'Clique aqui para ver o print do teste')
end