class SkillsController < BaseController
  def index
    #@skills = Skill.where("customer_id = ?", params[current_user.customer_id])
    #@skills = Skill.all
    bind_skills_and_disciplines
  end

  def new
    @skill = Skill.new
    bind_skills_and_disciplines
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to :action => 'index' #render 'skills/index' # Handle a successful save.
    else
      redirect_to :action => 'new'  #render 'skills/new'
    end
  end

  def show
    @skill = Skill.find(params[:id])
    bind_skills_and_disciplines
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    flash[:success] = "Skill deleted"
    redirect_to '/skills'
  end

  def edit
    @skill = Skill.find(params[:id])
    bind_skills_and_disciplines
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      @skill.save
      redirect_to action: :index
    else
      render 'skills/edit'
    end
  end

  private

    def skill_params
      params.require(:skill).permit(:name, :skill_rank)
    end
end
