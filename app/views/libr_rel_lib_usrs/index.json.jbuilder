json.array!(@libr_rel_lib_usrs) do |libr_rel_lib_usr|
  json.extract! libr_rel_lib_usr, :id, :libr_libro_id, :libr_usuario_id, :ubicacion, :otro
  json.url libr_rel_lib_usr_url(libr_rel_lib_usr, format: :json)
end
