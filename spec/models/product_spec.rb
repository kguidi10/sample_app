require 'rails_helper'

describe Product do
    context 'when the product has comments' do

     before do
      @user = FactoryGirl.create(:user)
      @product = FactoryGirl.create(:product)
      
      @comments = @product.comments.create!(rating: 1, user: @user, body: "Did not work for our Family!")
      @comments = @product.comments.create!(rating: 3, user: @user, body: "Worked sometimes for our Family")
      @comments = @product.comments.create!(rating: 5, user: @user, body: "Worked for our Family")
    end
end
 
  context "validates product has a name" do
    it "does not save product without a name" do
      expect(Product.new(name: "")).not_to be_valid
    end
  end
  context "validates product has a description" do
    it "does not save product without a description" do
      expect(Product.new(description: "")).not_to be_valid
    end
  end
  context "validates product has an image_url" do
    it "does not save product without an image_url" do
      expect(Product.new(image_url: "")).not_to be_valid
    end
  end
  context "validates product has a price" do
    it "does not save product without a price" do
      expect(Product.new(price: "")).not_to be_valid
    end
  end

end

