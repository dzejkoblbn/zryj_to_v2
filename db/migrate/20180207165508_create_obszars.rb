class CreateObszars < ActiveRecord::Migration[5.1]
  def change
    create_table :obszars, id:false do |t|
      t.primary_key :id_obszaru
      t.string :kod_pocztowy
      t.timestamps
    end
  end
end
