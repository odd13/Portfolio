class InterestsController < BaseController
  def index
    #@interests = Interest.where("customer_id = ?", params[current_user.customer_id])
    #@interests = Interest.all
    bind_skills_and_disciplines
  end

  def new
    @interest = Interest.new
    bind_skills_and_disciplines
  end

  def create
    @interest = Interest.new(interest_params)
    if @interest.save
      redirect_to :action => 'index' #render 'interests/index' # Handle a successful save.
    else
      redirect_to :action => 'new'  #render 'interests/new'
    end
  end

  def show
    @interest = Interest.find(params[:id])
    bind_skills_and_disciplines
  end

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    flash[:success] = "Interest deleted"
    redirect_to '/interests'
  end

  def edit
    @interest = Interest.find(params[:id])
    bind_skills_and_disciplines
  end

  def update
    @interest = Interest.find(params[:id])
    if @interest.update(interest_params)
      @interest.save
      redirect_to action: :index
    else
      render 'interests/edit'
    end
  end

  private

    def interest_params
      params.require(:interest).permit(:name)
    end

end
