class Uzytkownik < ApplicationRecord
  self.primary_key = 'index'
  has_one :zamowienie
  has_one :restauracja, foreign_key: :id_restauracji
  has_one :typ, foreign_key: :id_typu
  has_secure_password

  validates :index, presence: true, uniqueness: true, length: { in: 1..6 }
  validates :imie, presence: true, length: { in: 3..50 }
  validates :nazwisko, presence: true, length: { in: 3..50 }
  validates :kod_pocztowy_u, presence: true, length: { is: 6 }
  validates :ulica_u, presence: true, length: { in: 3..50 }
  validates :nr_budynku_u, presence: true, length: { in: 1..3 }
  validates :nr_mieszkania_u, presence: true, length: { in: 1..3 }
  validates :password, presence: true, length: { minimum: 6 }
end
