class ChangePriceToDecimal < ActiveRecord::Migration[5.1]
  	def self.up
		remove_foreign_key :products, column: :price
		change_column :products, :price, :decimal
	end
	def self.down
		add_foreign_key :products, :price
		change_column :products, :price, :string
	end
end
