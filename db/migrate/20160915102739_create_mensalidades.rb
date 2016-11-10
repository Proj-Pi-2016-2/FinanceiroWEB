class CreateMensalidades < ActiveRecord::Migration
  def change
    create_table :mensalidades do |t|
      t.date :data_entrada
      t.string :justifica_entrada , limit: 200

      
      t.timestamps null: false
    end
  end
end
