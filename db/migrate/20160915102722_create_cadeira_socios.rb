class CreateCadeiraSocios < ActiveRecord::Migration
  def change
    create_table :cadeira_socios do |t|
      t.integer :cpf, :limit => 8
      t.integer :cadeira
      t.timestamps null: false

    end
  end
end
