class Typ < ApplicationRecord
  self.primary_key = 'id_typu'
  has_many :uzytkowniks
end
