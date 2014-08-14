namespace :db  do
    desc "Fill database with sample data"
    task populate: :environment do
      #create families
      25.times do |n|
        Family.create!
      end

      #create users
      100.times do |n|
       name = Faker::Name.name
       presence = ["here","absent"].sample
       family_id = rand(0...25)
       User.create!(name: name, presence: presence, family_id: family_id)
     end
  end
end