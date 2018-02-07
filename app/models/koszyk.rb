class Koszyk < ApplicationRecord
  has_many :produkts, foreign_key: :id_produktu
  belongs_to :zamowienie, foreign_key: :id_zamowienia
end
