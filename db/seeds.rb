# using find_or_create_by will make this command idempotent which is useful
# for the seeds as you will want to run them every time you want to add new
# data

skills = [
  { name: 'HTML', skill_rank: 1 },
  { name: 'Linux', skill_rank: 1 },
  { name: 'CSS', skill_rank: 1},
  { name: 'Ruby on rails', skill_rank: 3 },
  { name: 'Arduino', skill_rank: 3 },
  { name: 'Python', skill_rank: 2 },
  { name: 'C', skill_rank: 3 },
  { name: 'C++', skill_rank: 3 },
  { name: 'Git', skill_rank: 3 },
  { name: 'Heroku', skill_rank: 3 },
  { name: 'Bash scripts', skill_rank: 3 },
  { name: 'MySQL', skill_rank: 2 },
  { name: 'Postgresql', skill_rank: 4 },
  { name: 'Reports builder 3.0', skill_rank: 2 },
  { name: 'VB', skill_rank: 4 },
  { name: 'JavaScript', skill_rank: 3 },
  { name: 'Java', skill_rank: 3 },
  { name: 'Google cloud', skill_rank: 4 },
  { name: 'VPS deployments', skill_rank: 2 },
  { name: 'Meteor', skill_rank: 4 }
]

skills.each do |a|
  Skill.find_or_create_by(a)
end

disiciplines = [
  { name: 'Management'},
  { name: 'Managed Services'},
  { name: 'Account Management'},
  { name: 'Company Processes'}
]

disiciplines.each do |a|
  Discipline.find_or_create_by(a)
end

educations = [
  { name: 'Java'},
  { name: 'Personal Training'},
  { name: 'ITIL'},
  { name: 'CERT IV'},
  { name: 'Frontline Management'}
]

educations.each do |a|
  Education.find_or_create_by(a)
end

industries = [
  { name: 'MSP'},
  { name: 'Health and Fitness'},
  { name: 'Information Technology'},
  { name: 'Retail'}
]

industries.each do |a|
  Industry.find_or_create_by(a)
end
