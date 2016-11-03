class ChangeLimitCpftoEight < ActiveRecord::Migration
  def change
      change_column :socios, :cpf, :integer, :limit => 8
      change_column :cadeira_socios, :cpf, :integer, :limit => 8
  end
end
