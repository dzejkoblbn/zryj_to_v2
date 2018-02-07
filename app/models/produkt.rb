class Produkt < ApplicationRecord
  self.primary_key = 'id_produktu'
  belongs_to :restauracja, foreign_key: :id_restauracji
  belongs_to :koszyk
end
