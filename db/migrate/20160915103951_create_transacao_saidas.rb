class CreateTransacaoSaidas < ActiveRecord::Migration
  def change
    create_table :transacao_saidas do |t|
    	t.integer :id_saida, null: false
    	t.date :data_saida
    	t.float :valor
    	t.string :justifica_saida , limit: 200 
    	t.binary :img_comprov, limit:  10.megabyte

      t.timestamps null: false
    end
  end
end
