class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :morada
      t.string :nif
      t.string :telefone

      t.timestamps
    end
  end
end
