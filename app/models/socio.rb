class Socio < ActiveRecord::Base
  has_secure_password
  
  validates_presence_of :cpf
  validates_length_of :cpf, :is => 11
  validates_numericality_of :cpf
  validates_uniqueness_of :cpf
  validates_cpf_format_of :cpf

  validates_presence_of :nome

  validates_presence_of :telefone

  validates_presence_of :endereco

  validates_presence_of :cadeira

  validates_presence_of :sexo


  validates_presence_of :permissao

  validates_presence_of :email
  validates :email, :email => true

end
