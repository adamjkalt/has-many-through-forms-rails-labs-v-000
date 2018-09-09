class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_comments = @user.comments.select("distinct post_id").map{|user| user.post}
  end

end
