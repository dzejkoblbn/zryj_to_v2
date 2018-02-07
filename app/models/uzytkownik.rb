class Uzytkownik < ApplicationRecord
  self.primary_key = 'index'
  has_one :zamowienie
  belongs_to :restauracja, foreign_key: :id_restauracji
  belongs_to :typ, foreign_key: :id_typu
  has_secure_password
end
