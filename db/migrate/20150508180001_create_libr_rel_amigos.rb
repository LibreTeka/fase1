class CreateLibrRelAmigos < ActiveRecord::Migration
  def change
    create_table :libr_rel_amigos do |t|
      t.integer :libr_usuario_id
      t.string :amigos_string
      t.integer :amigo_integer
      t.string :tipo_amistad1
      t.string :tipo_amistad2
      t.string :tipo_amistad3
      t.text :otro1
      t.text :otro2

      t.timestamps null: false
    end
  end
end
