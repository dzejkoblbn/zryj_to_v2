class CreateUzytkowniks < ActiveRecord::Migration[5.1]
  def change
    create_table :uzytkowniks, id:false do |t|
      t.primary_key :index
      t.string :imie
      t.string :kod_pocztowy_u
      t.string :nazwisko
      t.string :nr_budynku_u
      t.string :nr_mieszkania_u
      t.string :ulica_u
      t.integer :id_restauracji, index: true
      t.integer :id_typu, index: true
      add_foreign_key :uzytkowniks, :restauracjas, primary_key: :id_restauracji, column: :id_restauracji
      add_foreign_key :uzytkowniks, :typs, primary_key: :id_typu, column: :id_typu
      t.timestamps
    end
  end
end
