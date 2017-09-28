require 'rails_helper'

describe Product do

	context "when the Product has comments" do
	 	

	 	before do
	 		let(:product) { Product.create!(name: "New Subscription") }
	 		let(:user) { User.create!(email: "test@example.com", password: "test!!") }
  			product.comments.create!(rating: 1, user: user, body: "Did not work for our Family!")
 			product.comments.create!(rating: 3, user: user, body: "Worked sometimes for our Family")
  			product.comments.create!(rating: 5, user: user, body: "Worked for our Family")
		end


		it "returns the average of all comments" do
      		expect(@product.average_rating).to eq 3
     	end
 
     	
 
   	end
end