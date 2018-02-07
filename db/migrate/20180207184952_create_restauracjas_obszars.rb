class CreateRestauracjasObszars < ActiveRecord::Migration[5.1]
  def change
    create_table :restauracjas_obszars, id:false do |t|
        t.belongs_to :restauracja, index: true
        t.belongs_to :obszar, index: true
    end
  end
end
