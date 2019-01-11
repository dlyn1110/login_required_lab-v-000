class SecretsController < ActionController::Base
   
   def show
     if !current_user
       redirect_to '/login'
     else
       render 'show'
   end
 end


end
