class Obszar < ApplicationRecord
  self.primary_key = 'id_obszaru'
  has_and_belongs_to_many :restauracjas, :join_table => :restauracjas_obszars
  has_many :ulicas
end
