class LibrRelLibUsr < ActiveRecord::Base
	belongs_to:libr_libro
	belongs_to:libr_usuario
	validates_presence_of :libr_libro_id
	validates_presence_of :libr_usuario_id
end
