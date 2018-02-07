class Restauracja < ApplicationRecord
  self.primary_key = 'id_restauracji'
  has_and_belongs_to_many :obszars, :join_table => :restauracjas_obszars
  has_many :uzytkowniks
  has_many :produkts
end
