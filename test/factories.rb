FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"zinsert#{n}@gmail.com"
		end
		password "codemonkey"
		password_confirmation "codemonkey"
	end

	factory :comment do
		rating "1_star"
		place_id 15
		message "factory girl test"
	end

	factory :place do
		name "Factory Girl Test Place"
		description "Test place"
		address "20 N Main St, Brooksville FL 34601"
	end
end