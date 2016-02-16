class CreatePortfolios < ActiveRecord::Migration
	def change
		create_table :portfolios do |t|
			t.string :title
			t.string :description
			t.string :image
			t.timestamps null: false
		end
	end
end
