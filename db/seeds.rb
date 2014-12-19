# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project = Project.create(title: 'Captain America', description: 'the winter soldier')
project = Project.create(title: 'Hulk', description: 'the invincible soldier')
project = Project.create(title: 'Iron Man', description: 'Rich with smarts')
project = Project.create(title: 'Thor', description: 'From another world')