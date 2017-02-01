class WelcomeController < ApplicationController
  def index
    @skills = Skill.order('rank').all
  end
end
