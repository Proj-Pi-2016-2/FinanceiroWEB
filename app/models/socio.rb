class Socio < ActiveRecord::Base
  has_secure_password
  has_many :TransacaoEntrada

  validates_presence_of :cpf , message: 'não pode ficar em branco'
  validates_length_of :cpf, :is => 11, message: 'inválido inserido'
  validates_numericality_of :cpf, message: 'inválido inserido'
  validates_uniqueness_of :cpf, message: 'inválido inserido'
  validates_cpf_format_of :cpf, message: 'inválido inserido'

  validates_presence_of :nome , message: 'não pode ficar em branco'

  validates_presence_of :telefone , message: 'não pode ficar em branco'

  validates_presence_of :endereco , message: 'não pode ficar em branco'

  validates_presence_of :cadeira , message: 'não pode ficar em branco'

  validates_presence_of :sexo , message: 'não pode ficar em branco'


  validates_presence_of :permissao, message: 'não pode ficar em branco'

  validates_presence_of :email, message: 'não pode ficar em branco'
  validates :email, :email => true

end
