class Produkt < ApplicationRecord
  self.primary_key = 'id_produktu'
  has_one :restauracja, foreign_key: :id_restauracji
  has_one :koszyk
  validates :id_produktu, presence: true, uniqueness: true, length: { in: 1..6 }
  validates :nazwa_produktu, presence: true, length: { in: 3..50 }
  validates :opis_produktu, length: { in: 3..1000 }
  validates :czas_przygotowania, presence: true, length: { in: 1..10 }
  validates :cena, presence: true, length: { in: 1..10 }
end
