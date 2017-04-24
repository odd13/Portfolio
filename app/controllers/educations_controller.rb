class EducationsController < BaseController
#before_action :authenticate_user!, only: [:new, :create, :edit, :update, :distroy]
  def index
    #@educations = Education.where("customer_id = ?", params[current_user.customer_id])
    #@educations = Education.all
    bind_skills_and_disciplines
  end

  def new
    @education = Education.new
    bind_skills_and_disciplines
  end

  def create
    @education = Education.new(education_params)
    if @education.save
      redirect_to :action => 'index' #render 'educations/index' # Handle a successful save.
    else
      redirect_to :action => 'new'  #render 'educations/new'
    end
  end

  def show
    @education = Education.find(params[:id])
    bind_skills_and_disciplines
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    flash[:success] = "Education deleted"
    redirect_to '/educations'
  end

  def edit
    @education = Education.find(params[:id])
    bind_skills_and_disciplines
  end

  def update
    @education = Education.find(params[:id])
    if @education.update(education_params)
      @education.save
      redirect_to action: :index
    else
      render 'educations/edit'
    end
  end

  private

    def education_params
      params.require(:education).permit(:name)
    end

end
