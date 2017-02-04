class BaseController < ApplicationController

  def bind_skills_and_disciplines
    @skills = Skill.order('skill_rank').all
    @disciplines = Discipline.all
    @educations = Education.all
    @industries = Industry.all
  end
end
