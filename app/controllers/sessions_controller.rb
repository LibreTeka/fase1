class SessionsController < ApplicationController
before_action :set_libr_libro
  def new
  end

  def create
      user = LibrUsuario.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
         session[:user_id] = user.id
         redirect_to dentro_path, :notice => "¡¡Hola de nuevo!!"
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


    def set_libr_libro
      @libr_libros = LibrLibro.all
    end

