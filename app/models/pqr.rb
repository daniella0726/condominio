class Pqr < ApplicationRecord
  belongs_to :user
  has_many :respuesta_pqrs
end
