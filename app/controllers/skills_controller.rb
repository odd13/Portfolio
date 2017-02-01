class SkillsController < ApplicationController
	def index
		@skills = Skills.all
	end
	def new
    @skill = Skill.new
  end
	def create
	 @skill = Skill.new(skill_params)
	 if @skill.save
		 #redirect_to :action => 'index' #render 'skills/index' # Handle a successful save.
		 redirect_to '/skills'
	 else
		 redirect_to '/skills/new'  #render 'skills/new'
	 end
 end
 def self.show
	 @skill = Skill.find(params[:id])
 end

 def destroy
	 @skill = Skill.find(params[:id])
	 @skill.destroy
	 flash[:success] = "skill deleted"
	 redirect_to '/skills'
 end

 def edit
	 @skill = Skill.find(params[:id])
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
		 params.require(:skill).permit(:name, :description, :loggedBy, :rank)
	 end
end
