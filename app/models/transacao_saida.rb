class TransacaoSaida < ActiveRecord::Base
  has_attached_file :img_comprov, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img_comprov, content_type: /\Aimage\/.*\z/

  validates_presence_of :valor , message: 'não pode ficar em branco'
  validates_presence_of :data_saida , message: 'não pode ficar em branco'
  validates_presence_of :justifica_saida , message: 'não pode ficar em branco'
  validates_numericality_of :valor, greater_than: 0, message: 'tem que ser um número maior que 0'
end
