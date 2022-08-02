class RespuestaPqr < ApplicationRecord
  belongs_to :pqr
  belongs_to :admin

  has_one :user, through: :pqr
  
end
