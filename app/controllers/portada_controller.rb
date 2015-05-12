class PortadaController < ApplicationController
before_action :set_libr_libro, :set_libr_rel_lib_usr, :show_amistades

#Muestra en portada los libros del usuario.
 def set_libr_libro
          current_user2 ||= LibrUsuario.find(session[:user_id]) if session[:user_id]

    idusuario = current_user2.id
    concatenar="inner join libr_rel_lib_usrs on
                                     libr_rel_lib_usrs.libr_libro_id = libr_libros.id
                                     where libr_usuario_id = " + idusuario.to_s 

    @libr_libros = LibrLibro.joins(concatenar)
  end

  def set_libr_rel_lib_usr
      @libr_rel_lib_usr = LibrRelLibUsr.all
  end



  def show_amistades
    current_user2 ||= LibrUsuario.find(session[:user_id]) if session[:user_id]
     idusuario = current_user2.id

    amistades = LibrRelAmigo.find_by(id: idusuario)
      amistades = amistades.amigos_string
        if amistades
          kk= "id in ( "+ amistades + ")"
          @amigos = LibrUsuario.where(kk)
        else
          @amigos = "Sin amigos"
        end

  end

end
