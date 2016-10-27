class CreateCadeiras < ActiveRecord::Migration
  def change
    create_table :cadeiras do |t|
      t.integer :cadeira, null: false
      t.date :data_posse
      t.date :data_saida

      t.timestamps null: false
    end
  end
end
