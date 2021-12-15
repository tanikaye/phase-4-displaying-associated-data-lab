class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

  # def user_params
  #   params.permit(:username, :city, :items)
  # end
end
