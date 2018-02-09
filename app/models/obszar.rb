class Obszar < ApplicationRecord
  self.primary_key = 'id_obszaru'
  has_and_belongs_to_many :restauracjas, :join_table => :restauracjas_obszars
  has_many :ulicas
  validates :id_obszaru, presence: true, uniqueness: true, length: { in: 1..6 }
  validates :kod_pocztowy, presence: true, length: { is: 6 }
end
