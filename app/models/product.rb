class Product < ActiveRecord::Base
  has_many :orders
end

def self.search(search_term)
	if Rails.env.development?
		Product.where("name iLike ?", "%#{search_term}%")
	else
  		Product.where("name ilike ?", "%#{search_term}%")
	end
end