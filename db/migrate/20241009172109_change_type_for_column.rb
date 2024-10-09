class ChangeTypeForColumn < ActiveRecord::Migration[7.0]
  def change
    # cambiamos el tipo de dato de la columna a 'entero'
    change_column :clients, :age, :integer, using: 'age::integer'
  end
end
