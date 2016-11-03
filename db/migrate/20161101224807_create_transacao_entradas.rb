class CreateTransacaoEntradas < ActiveRecord::Migration
  def change
    create_table :transacao_entradas do |t|
      t.integer :id_entrada
      t.float :valor
      t.date :data_entrada
      t.string :justifica_entrada
      t.string :tipo
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
