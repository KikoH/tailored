class CreateImages < ActiveRecord::Migration
	def change
		create_table :images do |t|
			t.integer :portfolio_id
			t.string :image
			t.timestamps null: false
		end
	end
end
