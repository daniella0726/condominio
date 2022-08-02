class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :status, presence: true
  validates :name, presence: true
  validates :cargo, presence: true

  has_many :respuesta_pqrs
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  class Admin::ParameterSanitizer < Devise::ParameterSanitizer
    def initialize(*)
      super
        permit(:sign_up, keys: [:status, :name, :cargo])
    end
  end

end
