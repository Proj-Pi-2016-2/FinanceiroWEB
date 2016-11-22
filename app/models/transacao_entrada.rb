class TransacaoEntrada < ActiveRecord::Base

validates_presence_of :valor , message: 'não pode ficar em branco'
validates_presence_of :data_entrada , message: 'não pode ficar em branco'
validates_presence_of :justifica_entrada , message: 'não pode ficar em branco'
validates_numericality_of :valor, greater_than: 0, message: 'tem que ser um número maior que 0'

end