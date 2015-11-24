class DeleteColums < ActiveRecord::Migration
	def self.up
		remove_column :libr_usuarios, :password_confirmation
		remove_column :libr_usuarios, :email_confirmation
    end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
