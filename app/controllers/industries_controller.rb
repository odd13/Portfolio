class IndustriesController < BaseController
  def index
    #@industries = Industry.where("customer_id = ?", params[current_user.customer_id])
    #@industries = Industry.all
    bind_skills_and_disciplines
  end

  def new
    @industry = Industry.new
    bind_skills_and_disciplines
  end

  def create
    @industry = Industry.new(industry_params)
    if @industry.save
      redirect_to :action => 'index' #render 'industries/index' # Handle a successful save.
    else
      redirect_to :action => 'new'  #render 'industries/new'
    end
  end

  def show
    @industry = Industry.find(params[:id])
    bind_skills_and_disciplines
  end

  def destroy
    @industry = Industry.find(params[:id])
    @industry.destroy
    flash[:success] = "Industry deleted"
    redirect_to '/industries'
  end

  def edit
    @industry = Industry.find(params[:id])
    bind_skills_and_disciplines
  end

  def update
    @industry = Industry.find(params[:id])
    if @industry.update(industry_params)
      @industry.save
      redirect_to action: :index
    else
      render 'industries/edit'
    end
  end

  private

    def industry_params
      params.require(:industry).permit(:name)
    end

end
