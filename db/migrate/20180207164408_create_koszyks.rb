class CreateKoszyks < ActiveRecord::Migration[5.1]
  def change
    create_table :koszyks do |t|
      t.integer :liczba_sztuk
      t.integer :id_produktu, index: true
      t.integer :id_zamowienia, index: true
      add_foreign_key :koszyks, :produkts, primary_key: :id_produktu, column: :id_produktu
      add_foreign_key :koszyks, :zamowienies, primary_key: :id_zamowienia, column: :id_zamowienia
      t.timestamps
    end
  end
end
