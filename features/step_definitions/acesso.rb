

 
Dado("que eu acesse o site do heroku") do
  visit'https://ninjainvoices.herokuapp.com'
end

Quando("eu realizar um cadastro novo") do
  find(:css, '#register').click
   @password = Faker::Base.numerify('Capybara####').to_s
   @name = Faker::StarWars.character
   acesso = Acesso.new
   acesso.nome.set(@name)
   acesso.password.set(@password)
   acesso.email.set(Faker::Internet.email('teste'))
   find(:css, 'button[class ="btn btn-lg btn-primary"]').click
  end


Então("o cadastro é executado com sucesso") do
  expect(page).to have_content @name
end
