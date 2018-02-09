class Typ < ApplicationRecord
  self.primary_key = 'id_typu'
  has_many :uzytkowniks
  validates :id_typu, presence: true, uniqueness: true, length: { in: 1..6 }
  validates :nazwa_typu, presence: true, uniqueness: true, length: { in: 3..50 }
end
