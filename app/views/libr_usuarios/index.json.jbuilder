json.array!(@libr_usuarios) do |libr_usuario|
  json.extract! libr_usuario, :id, :Nombre, :Apellido1, :Apellido2, :poblacion, :email, :password
  json.url libr_usuario_url(libr_usuario, format: :json)
end
