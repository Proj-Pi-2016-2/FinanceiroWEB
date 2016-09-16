class CreateTransacaoEntradas < ActiveRecord::Migration
  def change
    create_table :transacao_entradas do |t|
      t.integer :id_entrada , null: false
      t.float :valor
      t.date :data_entrada
      t.string :justifica_entrada ,limit: 200
      t.string :tipo , limit: 1
      
      t.timestamps null: false
    end
  end
end
