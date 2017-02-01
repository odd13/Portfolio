class WelcomeController < ApplicationController
  def index
    @skills = Skill.order('rank').all
    @disciplines = Discipline.all
  end
end
