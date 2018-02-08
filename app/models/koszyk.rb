class Koszyk < ApplicationRecord
  has_many :produkts #, foreign_key: :id_produktu
  belongs_to :zamowienie, foreign_key: :id_zamowienia
  validates :liczba_sztuk, presence: true, length: { is: 2 }
end
