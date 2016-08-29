class UsersController < ApplicationController


  def new

  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def create
   user = User.new(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password_digest],
      
      if user.save
       flash[:success] = 'Successfully created account!'
       redirect_to '/'
      else
        redirect_to '/signup'
      end

   
  end
end
