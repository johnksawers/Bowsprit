class HomeController < ApplicationController
    def index
      if current_user.present?
        @user = current_user
        render :dashboard and return
      end
    end

    def about
    end

    def pricing
    end

    def faq
    end
end
