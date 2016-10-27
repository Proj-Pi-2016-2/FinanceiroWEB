class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
      t.string :nome
      t.integer :cpf, :limit => 8
      t.string :email
      t.integer :telefone
      t.string :endereco
      t.date :dataNascimento
      t.string :sexo
      t.integer :cadeira
      t.string :senha
      t.integer :permissao
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
