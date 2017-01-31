# using find_or_create_by will make this command idempotent which is useful
# for the seeds as you will want to run them every time you want to add new
# data
Skill.find_or_create_by([
  { name: 'HTML', is_active: true },
  { name: 'Linux', is_active: true },
  { name: 'CSS', is_active: true },
  { name: 'Ruby on rails', is_active: true },
  { name: 'Arduino', is_active: true },
  { name: 'Python', is_active: true },
  { name: 'C', is_active: true },
  { name: 'C++', is_active: true },
  { name: 'Git', is_active: true },
  { name: 'Heroku', is_active: true },
  { name: 'Bash scripts', is_active: true },
  { name: 'MySQL', is_active: true },
  { name: 'MySQL', is_active: true },
  { name: 'Postgresql', is_active: true },
  { name: 'Reports builder', is_active: true },
  { name: 'VB', is_active: true },
  { name: 'JavaScript', is_active: true },
  { name: 'Java', is_active: true },
  { name: 'Google cloud', is_active: true },
  { name: 'VPS deployments', is_active: true },
  { name: 'Meteor', is_active: true }
])
