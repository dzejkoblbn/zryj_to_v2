class Uzytkownik < ApplicationRecord
  self.primary_key = 'index'
  has_one :zamowienie
  has_one :restauracja, foreign_key: :id_restauracji
  has_one :typ, foreign_key: :id_typu
  has_secure_password
end
