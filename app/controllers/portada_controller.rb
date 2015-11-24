class PortadaController < ApplicationController
before_action :set_libr_libro, :set_libr_rel_lib_usr, :show_amistades, :set_libr_nuevo

#Muestra en portada los libros del usuario.
 def set_libr_libro
          current_user2 ||= LibrUsuario.find(session[:user_id]) if session[:user_id]

    idusuario = current_user2.id

    algunlibro = LibrRelLibUsr.find_by(libr_usuario_id: idusuario)
    if algunlibro

       concatenar="inner join libr_rel_lib_usrs on
                                     libr_rel_lib_usrs.libr_libro_id = libr_libros.id
                                     where libr_usuario_id = " + idusuario.to_s 
      @libr_libros = LibrLibro.joins(concatenar)
  
    else
      @libr_libros = "sinlibros"
    end


  end

  def set_libr_rel_lib_usr
      @libr_rel_lib_usr = LibrRelLibUsr.all
  end



  def show_amistades
    current_user2 ||= LibrUsuario.find(session[:user_id]) if session[:user_id]
     idusuario = current_user2.id

    amistades = LibrRelAmigo.find_by(id: idusuario)
      misamigos = amistades.amigos_string
        if misamigos
          kk= "id in ( "+ misamigos + ")"
          @amigos = LibrUsuario.where(kk)
        else
          @amigos = "Sin amigos"
        end
    rescue 
      @amigos = "Sin amigos"

  end




     def set_libr_nuevo


      @libr_nuevo = LibrLibro.all
     end

    # Never trust parameters from the scary internet, only allow the white list through.
   # def libr_libro_params
   #   params.require(:libr_libro).permit(:titulo, :autor, :editorial, :comentario, :otro1, :otro2)
   # end

end
