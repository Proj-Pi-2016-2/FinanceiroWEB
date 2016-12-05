class CadeiraSocio < ActiveRecord::Base
	 has_and_belongs_to_many :socios, :class_name => "CadeiraSocio",
    :foreign_key => "cpf", :association_foreign_key => "cpf"
    has_many :cadeiras
    validates_numericality_of :cadeira, greater_than: 0, message: 'tem que ser um número maior que 0'
end
