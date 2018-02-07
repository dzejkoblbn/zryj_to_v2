class CreateProdukts < ActiveRecord::Migration[5.1]
  def change
    create_table :produkts do |t|
      t.float :cena
      t.float :czas_przygotowania
      t.integer :id_produktu
      t.string :nazwa_produktu
      t.string :opis_produktu

      t.timestamps
    end
  end
end
