# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project = Project.create(title: 'Captain America', description: 'the winter soldier', team: 'Alpha')
project = Project.create(title: 'Hulk', description: 'the invincible soldier', team: 'Alpha')
project = Project.create(title: 'Iron Man', description: 'Rich with smarts', team: 'Bravo')
project = Project.create(title: 'Thor', description: 'From another world', team: 'Bravo')
project = Project.create(title: 'The Mechanic', description: 'Fixing everything', team: 'Bravo')
project = Project.create(title: 'Chuck Norris', description: '...', team: 'Bravo')
project = Project.create(title: 'Craig Nielson', description: 'The very same', team: 'Alpha')
project = Project.create(title: 'Caesar Fistulous', description: 'From the year of tomorrow', team: 'Alpha')