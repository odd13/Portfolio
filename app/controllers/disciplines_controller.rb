class DisciplinesController < BaseController
  def index
    #@disciplines = Discipline.where("customer_id = ?", params[current_user.customer_id])
    #@disciplines = Discipline.all
    bind_skills_and_disciplines
  end

  def new
    @discipline = Discipline.new
    bind_skills_and_disciplines
  end

  def create
    @discipline = Discipline.new(discipline_params)
    if @discipline.save
      redirect_to :action => 'index' #render 'disciplines/index' # Handle a successful save.
    else
      redirect_to :action => 'new'  #render 'disciplines/new'
    end
  end

  def show
    @discipline = Discipline.find(params[:id])
    bind_skills_and_disciplines
  end

  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy
    flash[:success] = "Discipline deleted"
    redirect_to '/disciplines'
  end

  def edit
    @discipline = Discipline.find(params[:id])
    bind_skills_and_disciplines
  end

  def update
    @discipline = Discipline.find(params[:id])
    if @discipline.update(discipline_params)
      @discipline.save
      redirect_to action: :index
    else
      render 'disciplines/edit'
    end
  end

  private

    def discipline_params
      params.require(:discipline).permit(:name)
    end
end
