class TransacaoEntrada < ActiveRecord::Base
	has_and_belongs_to_many :mensalidades
end
