class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
    	t.string :image
    	t.string :testimonial
    	t.string :name
    	t.string :company
      t.timestamps null: false
    end
  end
end
