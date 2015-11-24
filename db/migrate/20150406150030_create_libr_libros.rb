class CreateLibrLibros < ActiveRecord::Migration
  def change
    create_table :libr_libros do |t|
      t.string :titulo
      t.string :autor
      t.string :editorial
      t.string :comentario
      t.string :otro1
      t.string :otro2

      t.timestamps null: false
    end
  end
end
