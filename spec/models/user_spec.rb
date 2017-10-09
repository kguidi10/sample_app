
require 'rails_helper'

describe User do 
	context "testing validations password not 6 digit min" do
		it "will not validate" do


describe User, type: :model do
 	it "should not validate users without an email address" do
 		@user = FactoryGirl.build(:user, email: "not_an_email")
 		expect(@user).to_not be_valid
	end
end