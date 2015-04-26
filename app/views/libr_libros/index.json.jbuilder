json.array!(@libr_libros) do |libr_libro|
  json.extract! libr_libro, :id, :titulo, :autor, :editorial, :comentario, :otro1, :otro2
  json.url libr_libro_url(libr_libro, format: :json)
end
