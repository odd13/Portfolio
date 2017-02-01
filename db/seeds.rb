# using find_or_create_by will make this command idempotent which is useful
# for the seeds as you will want to run them every time you want to add new
# data

skills = [
  { name: 'HTML', rank: 1 },
  { name: 'Linux', rank: 1 },
  { name: 'CSS', rank: 1},
  { name: 'Ruby on rails', rank: 3 },
  { name: 'Arduino', rank: 3 },
  { name: 'Python', rank: 2 },
  { name: 'C', rank: 3 },
  { name: 'C++', rank: 3 },
  { name: 'Git', rank: 3 },
  { name: 'Heroku', rank: 3 },
  { name: 'Bash scripts', rank: 3 },
  { name: 'MySQL', rank: 2 },
  { name: 'Postgresql', rank: 4 },
  { name: 'Reports builder 3.0', rank: 2 },
  { name: 'VB', rank: 4 },
  { name: 'JavaScript', rank: 3 },
  { name: 'Java', rank: 3 },
  { name: 'Google cloud', rank: 4 },
  { name: 'VPS deployments', rank: 2 },
  { name: 'Meteor', rank: 4 }
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
