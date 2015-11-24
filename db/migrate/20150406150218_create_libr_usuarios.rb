class CreateLibrUsuarios < ActiveRecord::Migration
  def change
    create_table :libr_usuarios do |t|
      t.string :Nombre
      t.string :Apellido1
      t.string :Apellido2
      t.string :poblacion
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
