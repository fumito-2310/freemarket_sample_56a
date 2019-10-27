class UsersController < ApplicationController
 def show
 end

 def new
    @user = current_user.id
    @user.create(user_params)
   else
 end

 private

 def user_params
 params.permit(:address_number,:address_prefecture,:address_name,:address_block,:address_building)
 end
end