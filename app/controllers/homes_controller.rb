class HomesController < ApplicationController
  def index
    @users = User.all
  end

# private 
#   def user_params
#   params.require(:user).permit(:email, :user_id, :first_name, :last_name)
#   end
end
