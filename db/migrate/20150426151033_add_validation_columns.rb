class AddValidationColumns < ActiveRecord::Migration
	def self.up
		add_column(:libr_usuarios, :password_confirmation, :string)
		add_column(:libr_usuarios, :email_confirmation, :string)

	end

end
