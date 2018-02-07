class Ulica < ApplicationRecord
  self.primary_key = 'id_ulicy'
  belongs_to :obszar, foreign_key: :id_obszaru
end
