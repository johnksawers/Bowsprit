class ApplicationController < ActionController::Base
    protect_from_forgery
    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_path, :alert => exception.message
    end
    protected

    def after_update_path_for(resource)
        root_path
    end
end
