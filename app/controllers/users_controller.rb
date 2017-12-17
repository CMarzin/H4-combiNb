class UsersController < ApplicationController
  def show
    @user = User.find_by_username(params[:id])
    @rate_type = Rate.where("rateable_type like ? AND rateable_id = ?", "%User%", @user.id)
    @max_rating = 5

    unless @rate_type.length === 0
      @all_rate_by_user = @rate_type.map { |e|
        e.rate
      }
      @results_of_user_rating = @all_rate_by_user.reduce { |acc, e| acc + e } / @all_rate_by_user.length

      puts "==="
      puts @results_of_user_rating
      puts "==="
    end

    unless current_user
      @rated_by_current_user = false
    else
      @rated_by_current_user = @rate_type.find_by_created_by(current_user.id)
    end
  end

end