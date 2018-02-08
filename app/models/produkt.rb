class Produkt < ApplicationRecord
  self.primary_key = 'id_produktu'
  belongs_to :restauracja, foreign_key: :id_restauracji
  belongs_to :koszyk
  validates :id_produktu, presence: true, uniqueness: true, length: { is: 5 }
  validates :nazwa_produktu, presence: true, length: { in: 3..50 }
  validates :opis_produktu, length: { in: 3..1000 }
  validates :czas_przygotowania, presence: true, length: { in: 1..10 }
  validates :cena, presence: true, length: { in: 1..10 }
end
