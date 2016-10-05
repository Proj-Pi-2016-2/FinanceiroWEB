class CreateMensalidades < ActiveRecord::Migration
  def change
    create_table :mensalidades do |t|
      t.integer :id_entrada, null: false
      t.date :data_entrada
      t.string :justifica_entrada , limit: 200

      
      t.timestamps null: false
    end
  end
end
