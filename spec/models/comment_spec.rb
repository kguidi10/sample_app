

require 'rails_helper'

describe Comment do 
	context "Testing validations" do

		it "is not valid without a rating" do
			expect(Comment.net(rating.nil)).not_to be_valid
		end
	end
	
end