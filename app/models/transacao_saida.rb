class TransacaoSaida < ActiveRecord::Base
  has_attached_file :img_comprov, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img_comprov, content_type: /\Aimage\/.*\z/
end
