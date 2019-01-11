class SecretsController < ActionController::Base
   before_action :require_login

   def show
     if !current_user
       redirect_to '/login'
     else
       @secret = "The secret message is found here. Another edit here."
   end
 end


end
