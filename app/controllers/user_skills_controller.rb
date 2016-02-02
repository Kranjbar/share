class UserSkillsController < ApplicationController
  before_action :logged_in?, only: [ :index, :create]

  def index
    @categories = Category.all
  end

  def create
    @user = current_user
    @skill = Skill.find(params[:skill_id])
    @user_skill = @user.user_skills.find_by(skill_id: @skill.id)
    if !@user_skill
      @user.skills.push(@skill)
      redirect_to "/users/#{@user.slug}"
    else
      flash[:error] = "You have already selected this skill"
      redirect_to display_skills_path
    end
  end

  def destroy
    @user = current_user
    user_skills_select = @user.user_skills.find(params[:id])
    user_skills_select.destroy
    redirect_to user_path(@user.slug)
  end

end