class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new
    @skill.skill = params[:skill]
    @skill.description = params[:description]
    @skill.avg = params[:avg]
    @skill.acquired = params[:acquired]
    @skill.special = params[:special]
    @skill.cert = params[:cert]

    if @skill.save
      redirect_to skills_url, :notice => "Skill created successfully."
    else
      render 'new'
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])

    @skill.skill = params[:skill]
    @skill.description = params[:description]
    @skill.avg = params[:avg]
    @skill.acquired = params[:acquired]
    @skill.special = params[:special]
    @skill.cert = params[:cert]

    if @skill.save
      redirect_to skill_url(@skill.id), :notice => "Skill updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @skill = Skill.find(params[:id])

    @skill.destroy

    redirect_to skills_url, :notice => "Skill deleted."
  end
end
