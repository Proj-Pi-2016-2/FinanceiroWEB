class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
		t.integer :cpf , null: false
    	t.string :nome , limit: 200
    	t.string :email , limit: 70
    	t.integer :telefone
    	t.string :endereco , limit: 250
    	t.date :data_nascimento
    	t.string :sexo , limit: 1
    	t.integer :cadeira 
    	t.string :senha , limit: 50
    	t.integer :permissao
    	
    	t.timestamps null: false
    end
  end
end
