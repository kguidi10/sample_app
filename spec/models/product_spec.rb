require 'rails_helper'

describe Product do

	context "when the Product has comments" do
	 	
    let(:product) { Product.create!(name: "Subscription", description: "familytime", price: "50") }
    # let(:user) { User.create!(email: "maili23@web.de", password: "password") }
    user = FactoryGirl.build(:user)

	 	before do
  			@product.comments.create!(rating: 1, user: @user, body: "Did not work for our Family!")
 			  @product.comments.create!(rating: 3, user: @user, body: "Worked sometimes for our Family")
  			@product.comments.create!(rating: 5, user: @user, body: "Worked for our Family")
		end


		  it "returns the average of all comments" do
      		expect(@product.average_rating).to eq 3
     	end


      it "returns the lowest rating comment" do
        expect(product.lowest_rating_comment.rating).to eq 1
      end

      it "returns the highest rating comment" do
        expect(product.highest_rating_comment.rating).to eq 5
      end


     context "when product has no name" do
      before do
        @product = Product.create(:description => "This is a test")
      end
 
     	it "is an invalid product" do
       		expect(@product).not_to be_valid
     	end
 
   	end
end
