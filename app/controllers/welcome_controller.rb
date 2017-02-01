class WelcomeController < BaseController
  def index
    bind_skills_and_disciplines
  end
end
