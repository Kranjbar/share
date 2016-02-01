class UserSkillsController < ApplicationController

  def index
    @categories = Category.all
  end

  def create
    @user = current_user
    @skill = Skill.find(params[:skill_id])

    @user.skills.push(@skill)

    redirect_to "/users/#{@user.id}"
  end

  def destroy
    @user = current_user
    user_skills_select = @user.user_skills.find(params[:id])
    user_skills_select.destroy
    redirect_to user_path(@user)
  end

end
