class SessionsController < ApplicationController


  def create
      user = LibrUsuario.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
         session[:user_id] = user.id
         redirect_to portada_path, :notice => "¡¡Hola de nuevo!!"
      else
         flash.now.alert = "Correo o contraseña incorrecta."
         render "new"
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "¡¡Hasta pronto!!"
  end







end