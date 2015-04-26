class RenameColumn < ActiveRecord::Migration
	def self.up
		rename_column :libr_usuarios, :password, :password_digest
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
