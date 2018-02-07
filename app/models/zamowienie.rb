class Zamowienie < ApplicationRecord
  self.primary_key = 'id_zamowienia'
  has_one :uzytkownik, foreign_key: :index
  has_many :koszyks
end
