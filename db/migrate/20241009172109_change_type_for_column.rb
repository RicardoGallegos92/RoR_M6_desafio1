class ChangeTypeForColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :clients, :age, :integer
  end
end
