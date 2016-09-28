class CreateCaixas < ActiveRecord::Migration
  def change
    create_table :caixas do |t|
      t.integer :id_caixa, null: false
      t.date :data_caixa
      t.float :saldo
      
      t.timestamps null: false
    end
  end
end
