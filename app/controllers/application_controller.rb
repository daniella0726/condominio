class ApplicationController < ActionController::Base
    #before_action :authenticate_user!

    protected

    def devise_parameter_sanitizer
        if resource_class == User
            User::ParameterSanitizer.new(User, :user, params)
        elsif resource_class == Admin
            Admin::ParameterSanitizer.new(Admin, :admin, params) 
        end
    end

end
