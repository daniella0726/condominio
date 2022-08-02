class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :predio
  has_many :pqrs

  class User::ParameterSanitizer < Devise::ParameterSanitizer
    def initialize(*)
      super
        permit(:sign_up, keys: [:predio_id, :fecha_ini, :status, :name])
    end
  end
  
end
