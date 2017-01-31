# using find_or_create_by will make this command idempotent which is useful
# for the seeds as you will want to run them every time you want to add new
# data
Skill.find_or_create_by([
  { name: 'HTML' },
  { name: 'Linux' },
  { name: 'CSS' },
  { name: 'Ruby on rails' },
  { name: 'Arduino' },
  { name: 'Python' },
  { name: 'C' },
  { name: 'C++' },
  { name: 'Git' },
  { name: 'Heroku' },
  { name: 'Bash scripts' },
  { name: 'MySQL' },
  { name: 'MySQL' },
  { name: 'Postgresql' },
  { name: 'Reports builder' },
  { name: 'VB' },
  { name: 'JavaScript' },
  { name: 'Java' },
  { name: 'Google cloud' },
  { name: 'VPS deployments' },
  { name: 'Meteor' }
])
