class CreateTransacaoSaidas < ActiveRecord::Migration
  def change
    create_table :transacao_saidas do |t|
      t.integer :id_saida
      t.float :valor
      t.date :data_saida
      t.string :justifica_saida
      t.binary :img_comprov
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end

  def up
    add_attachment :transacao_saida, :img_comprov
  end

  def down
    remove_attachment :transacao_saida, :img_comprov
  end
end
