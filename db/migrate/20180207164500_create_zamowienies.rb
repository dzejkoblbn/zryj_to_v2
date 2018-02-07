class CreateZamowienies < ActiveRecord::Migration[5.1]
  def change
    create_table :zamowienies do |t|
      t.float :czas_realizacji
      t.date :data_zamownienia
      t.integer :id_zamowienia
      t.float :koszt

      t.timestamps
    end
  end
end
