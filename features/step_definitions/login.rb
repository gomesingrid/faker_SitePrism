

Dado("que eu  acesso o site do Heroku") do
    home = Acesso.new
    home.load  
  end
  
  Quando("eu realizar o login") do
    find(:css, ".btn btn-primary").click
    fill_in 'email', with: 'teste@teste23.com.br'
    fill_in 'password', with: 'qweasdq'
    find(:css,'button[class =".btn btn-lg btn-primary login-button"]').click
  end

  Então("devo me logar no Heroku") do
  end
  
                                                                       
                                                                                 