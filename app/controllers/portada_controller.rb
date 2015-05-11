class PortadaController < ApplicationController
before_action :set_libr_libro, :set_libr_rel_lib_usr


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

end
