class Socio < ActiveRecord::Base
	has_and_belongs_to_many :mensalidades
	has_one :cadeira_socios
end
