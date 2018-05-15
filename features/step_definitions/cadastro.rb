

 
Dado("que eu acesse o site do heroku") do
  home = Acesso.new
  home.load
end

Quando("eu realizar um cadastro novo") do
  find(:css, '#register').click
  @name = Faker::StarWars.character
   cadastro = Cadastro.new
   cadastro.nome.set(@name)
   cadastro.email.set(Faker::Internet.email('teste'))
   cadastro.senha.set(102030)
   find(:css, 'button[class ="btn btn-lg btn-primary"]').click
  end


Então("o cadastro é executado com sucesso") do
  expect(page).to have_content @name
end

