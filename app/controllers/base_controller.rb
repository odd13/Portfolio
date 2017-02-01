class BaseController < ApplicationController
  http_basic_authenticate_with(
    name: "odd13",
    password: "Th!sisS3cret",
    except: [:index, :show]
  )

  def bind_skills_and_disciplines
    @skills = Skill.order('skill_rank').all
    @disciplines = Discipline.all
  end
end
