# encoding: utf-8
#!/usr/bin/env ruby

class Cadastro < SitePrism::Page

    element :nome,  "input[id='register_name']"
    element :email, "input[id='register_email']"
    element :senha, "input[id='register_password']"
     
end 





    
