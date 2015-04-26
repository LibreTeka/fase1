class LibrLibro < ActiveRecord::Base

	has_many :LibrRelLibUsrs, dependent: :destroy
	validates_presence_of :titulo
	validates_presence_of :autor
end
