class Restauracja < ApplicationRecord
  self.primary_key = 'id_restauracji'
  has_and_belongs_to_many :obszars, :join_table => :restauracjas_obszars
  has_many :uzytkowniks
  has_many :produkts
  validates :id_restauracji, presence: true, uniqueness: true, length: { is: 5 }
  validates :nazwa_restauracji, presence: true, length: { in: 3..50 }
  validates :opis_restauracji, presence: true, length: { in: 3..1000 }
  validates :kod_pocztowy_r, presence: true, length: { is: 6 }
  validates :ulica_r, presence: true, length: { in: 3..50 }
  validates :numer_budynku_r, presence: true, length: { in: 1..3 }
  validates :numer_lokalu_r, length: { in: 1..3 }
end
