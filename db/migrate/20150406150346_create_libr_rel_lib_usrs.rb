class CreateLibrRelLibUsrs < ActiveRecord::Migration
  def change
    create_table :libr_rel_lib_usrs do |t|
      t.integer :libr_libro_id
      t.integer :libr_usuario_id
      t.string :ubicacion
      t.string :otro

      t.timestamps null: false
    end
  end
end
