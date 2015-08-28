require 'airborne'

describe 'basic user activity' do

	context 'when there is no user in the database' do
	
		it 'should create a new user' do
		  	post "http://localhost:3000/api/flights",
		  	{
	  		  realm: "BRL",
			  username: "Leo Steffen",
			  credentials: {username: "LS"},
			  challenges: {goal: "fly"},
			  email: "lsl@goo.com",
			  emailVerified: false,
			  verificationToken: "1111",
			  status: "AVAILABLE",
			  created: "2010-10-10",		
			}
		end

		after :each do
			#delete the user
		end 

	end

	context 'when there is already a group of users in the database' do
		# this one will create 3 users before and delete after
		# also has to provide the access tokens for each of the users
		# it will test that a user can be edited, deleted...
	end

end

