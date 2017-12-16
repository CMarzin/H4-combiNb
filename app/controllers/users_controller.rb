class UsersController < ApplicationController
  def show
    @user = User.find_by_username(params[:id])
    @rate_type = Rate.where("rateable_type like ? AND rateable_id = ?", "%User%", @user.id)
    @max_rating = 5
    
    
    unless @rate_type.find_by_created_by(current_user.id).nil?
      @rated = @rate_type.find_by_created_by(current_user.id)
    else
      @rated = false
    end
  end

end