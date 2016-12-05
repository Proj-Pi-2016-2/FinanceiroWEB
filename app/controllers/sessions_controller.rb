class SessionsController < ApplicationController

 def new

 end

 def create
 	user = Socio.find_by(email: params[:email])
 		if user && user.authenticate(params[:senha])
 			session[:id] = user.id
 			redirect_to socios_path, notice: "Logado com sucesso!"
 		else
 			flash.now.alert = "Email ou Senha invalida"
 			render "new"
 		end

 end

 def destroy
 	session[:id] = nil
 	redirect_to login_path, notice: "Deslogado com sucesso!"
 end

 def set_roots
   if current_user
     if session[:id] == 1
       redirect_to socios_path
     else
<<<<<<< HEAD
       redirect_to "/mensalidades?utf8=Filtrar%21&search=" + session[:id].to_s
=======
       redirect_to "/mensalidades?utf8=✓&commit=Filtrar%21&search=" + session[:id].to_s
>>>>>>> master
     end
   else
     redirect_to "/login"
   end
 end

end
