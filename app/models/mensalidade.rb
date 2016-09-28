class Mensalidade < ActiveRecord::Base
	has_and_belongs_to_many :socios
	has_and_belongs_to_many :transacao_entrada
end
