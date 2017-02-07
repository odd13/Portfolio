class BaseController < ApplicationController

  def bind_skills_and_disciplines
    @skills = Skill.order('skill_rank').all
    @disciplines = Discipline.all
    @educations = Education.all
    @industries = Industry.all
    @interests = Interest.all
    @skill_levels = Skill.order('skill_rank DESC').group(:skill_rank).count
  end

end
