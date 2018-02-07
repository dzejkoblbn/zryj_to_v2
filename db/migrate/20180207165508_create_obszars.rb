class CreateObszars < ActiveRecord::Migration[5.1]
  def change
    create_table :obszars do |t|
      t.integer :id_obszaru
      t.string :kod_pocztowy

      t.timestamps
    end
  end
end
