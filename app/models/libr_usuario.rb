class LibrUsuario < ActiveRecord::Base
	has_secure_password
	has_many :LibrRelLibUsrs, dependent: :destroy
	has_many :LibrRelAmigo, dependent: :destroy

	has_one :LibrRelAmigos, dependent: :destroy
	accepts_nested_attributes_for :LibrRelAmigo 
	validates_presence_of :Nombre
	validates_presence_of :email
	validates_presence_of :password, :on => :create
  #validates_presence_of :password_confirmation, :on => :create



 validates :password, presence: true, :if => :validate_password?

 validates :password_confirmation, presence: true, :if => :validate_password?

def validate_password?
  password_digest.present? || password_confirmation.present?
end






	# Validamos en una expresion regular nuestro email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
 	# Validamos que el email sea unico
 	validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}


	# Validamos que el nombre tenga entre 8 a 12 caracteres
	validates :Nombre, length: { in: 1..12 , message: "debe tener entre 1 y 12 caracteres"}



  # Validamos que la contraseña tenga entre 8 a 12 caracteres
  #validates :password_digest, length: { in: 8..12 , message: "La contraseña debe tener entre 8 y 12 caracteres"}

end
