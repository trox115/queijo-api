class CreateQueijos < ActiveRecord::Migration[6.0]
  def change
    create_table :queijos do |t|
      t.string :nome
      t.string :tamanho

      t.timestamps
    end
  end
end
