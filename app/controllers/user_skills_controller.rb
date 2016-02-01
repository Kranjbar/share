class UserSkillsController < ApplicationController

  def index
    @categories = Category.all
  end

  def create
    @user = current_user
    @library = Library.find(params[:library_id])

    @user.libraries.push(@library)

    redirect_to "/users/#{@user.id}/libraries"
  end

end
