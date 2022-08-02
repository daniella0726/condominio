class Predio < ApplicationRecord

    has_many :users

    def name
        if ubicacion == "N.A"
            "#{tipo} #{tipo_no}"
        else
            "#{ubicacion} #{ubicacion_no}"
        end
    end
    
end
