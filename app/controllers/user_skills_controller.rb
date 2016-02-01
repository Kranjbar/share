class UserSkillsController < ApplicationController
  before_action :logged_in?, only: [ :index, :create]

  def index
    @categories = Category.all
  end

  def create
    @user = current_user
    @skill = Skill.find(params[:skill_id])

    @user.skills.push(@skill)

    redirect_to "/users/#{@user.id}"
  end

end
