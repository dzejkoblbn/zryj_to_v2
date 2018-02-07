class CreateRestauracjas < ActiveRecord::Migration[5.1]
  def change
    create_table :restauracjas, id:false do |t|
      t.primary_key :id_restauracji
      t.string :kod_pocztowy_r
      t.string :nazwa_restauracji
      t.string :numer_budynku_r
      t.string :numer_lokalu_r
      t.string :opis_restauracji
      t.string :ulica_r
      t.timestamps
    end
  end
end
