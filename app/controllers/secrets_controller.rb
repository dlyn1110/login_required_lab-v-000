class SecretsController < ActionController::Base
   before_action :require_login
   skip_before_action :require_login, only: [:index]

   def show
     if !current_user
       redirect_to '/login'
     else
       render 'show'
     end
   end

   def require_login
     redirect_to controller: 'sessions', action: 'new' unless current_user
    end
   end
