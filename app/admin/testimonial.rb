ActiveAdmin.register Testimonial do
	menu parent: "Sections"
	permit_params :image, :testimonial, :name, :company

	action_item :new, only: :show do
		link_to 'Create another', new_admin_testimonial_path
	end

	index as: :grid do |testimonial|
		a href: admin_testimonial_path(testimonial) do
			h2 testimonial.name
			img src: testimonial.image_url(:thumb)
		end
	end

	config.filters = false

end
