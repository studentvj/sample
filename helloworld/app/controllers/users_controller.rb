class UsersController < ApplicationController


  def new
	@user=User.new
  end
	def create
		@user = User.new(params[:user].permit(:name))
		 @user.save
			
			render action: "create"
		
	end
end
