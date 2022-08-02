class Pqr < ApplicationRecord
  belongs_to :user
  
  has_many :respuesta_pqrs
  accepts_nested_attributes_for :respuesta_pqrs
end
