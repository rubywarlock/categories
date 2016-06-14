namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		#User.create!(name: "Example User",email: "example@railstutorial.org",password: "foobar",password_confirmation: "foobar")
		r = Random.new
		99.times do |n|

			email = "user-#{n+1}@apptest.org"
			password  = "password"

			User.create!(
				age: r.rand(0..100),
				pay: r.rand(0..1000000),
				stature: r.rand(0..200),
				weigh: r.rand(0..200),
				email: email,
				password: password,
				password_confirmation: password
			)
		end
	end
end