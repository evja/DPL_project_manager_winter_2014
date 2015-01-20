#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##### Users #####

4.times do |n|
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.free_email,
    phone: Faker::PhoneNumber.phone_number,
    password: 'password',
    password_confirmation: 'password'
  )
end

##### Projects #####
@users = User.all

@users.each do |u|
  3.times do |c|
    u.projects.create!(
      owner: Faker::Name.name,
      team: Faker::Company.name,
      title: Faker::Lorem.word,
      description: Faker::Lorem.paragraph,
      deadline: Faker::Date.between(2.days.from_now, 30.days.from_now)
    )
  end
end

##### Tasks #####
@projects = Project.all

@projects.each do |p|
  4.times do |c|
    p.tasks.create!(
      title: Faker::Company.name,
      description: Faker::Lorem.paragraph,
      deadline: Faker::Date.between(2.days.from_now, 30.days.from_now),
      is_completed: false
    )
  end
end