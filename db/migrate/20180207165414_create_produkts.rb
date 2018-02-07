class CreateProdukts < ActiveRecord::Migration[5.1]
  def change
    create_table :produkts, id:false do |t|
      t.primary_key :id_produktu
      t.float :cena
      t.float :czas_przygotowania
      t.string :nazwa_produktu
      t.string :opis_produktu
      t.integer :id_restauracji, index: true
      add_foreign_key :produkts, :restauracjas, primary_key: :id_restauracji, column: :id_restauracji
      t.timestamps
    end
  end
end
