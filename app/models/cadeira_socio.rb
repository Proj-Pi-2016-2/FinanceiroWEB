class CadeiraSocio < ActiveRecord::Base
	 has_and_belongs_to_many :socios, :class_name => "CadeiraSocio",
    :foreign_key => "cpf", :association_foreign_key => "cpf"
    has_many :cadeiras
end
