class CreateUlicas < ActiveRecord::Migration[5.1]
  def change
    create_table :ulicas, id:false do |t|
      t.primary_key :id_ulicy
      t.string :nazwa_ulicy
      t.integer :id_obszaru, index: true
      add_foreign_key :ulicas, :obszars, primary_key: :id_obszaru, column: :id_obszaru
      t.timestamps
    end
  end
end
