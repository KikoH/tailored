class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string :title
    	t.string :subtitle
    	t.string :image
    	t.string :name
    	t.string :position
    	t.string :email
    	t.string :description
      t.timestamps null: false
    end
  end
end
