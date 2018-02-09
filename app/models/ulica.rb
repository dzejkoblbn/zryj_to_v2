class Ulica < ApplicationRecord
  self.primary_key = 'id_ulicy'
  belongs_to :obszar, foreign_key: :id_obszaru
  validates :id_ulicy, presence: true, uniqueness: true, length: { in: 1..6 }
  validates :nazwa_ulicy, presence: true, uniqueness: true, length: { in: 3..50 }
end
