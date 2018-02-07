class CreateZamowienies < ActiveRecord::Migration[5.1]
  def change
    create_table :zamowienies, id:false do |t|
      t.primary_key :id_zamowienia
      t.float :czas_realizacji
      t.date :data_zamownienia
      t.float :koszt
      t.integer :index, index: true
      add_foreign_key :zamowienies, :uzytkowniks, primary_key: :index, column: :index
      t.timestamps
    end
  end
end
