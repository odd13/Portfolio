# app/controllers/sessions_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def new
    base_variables
    super
  end

  def edit
    # add custom logic here
    base_variables
    super
  end
  private

  def base_variables
    @skills = Skill.order('skill_rank').all
    @disciplines = Discipline.all
    @educations = Education.all
    @industries = Industry.all
    @interests = Interest.all
    @skill_levels = Skill.order('skill_rank DESC').group(:skill_rank).count
  end
end
