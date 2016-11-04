class SessionsController < ApplicationController

 def new
 
 end
 
 def create
 	user = Socio.find_by(email: params[:email])
 	if user && user.authenticate(params[:senha])
 		session[:id] = user.id
 		redirect_to root_url, notice: "Logado com sucesso!"
 	else
 		flash.now.alert = "Email ou Senha invalida"
 		render "new"
 	end
 end
 
 def destroy
 	session[:id] = nil
 	redirect_to root_url, notice: "Deslogado com sucesso!"
 end

end
