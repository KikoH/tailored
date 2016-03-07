ActiveAdmin.register Portfolio do

	menu parent: "Sections"
	permit_params :title, :description, :subtitle, :category, :main_image, images_attributes: [:id, :image]

	action_item :new, only: :show do
		link_to 'Create another', new_admin_portfolio_path
	end


	index as: :grid do |portfolio|
		link_to image_tag(portfolio.main_image_url(:thumb)), admin_portfolio_path(portfolio)
	end

	form do |f|
		f.inputs "Portfolios" do
			f.input :title
			f.input :subtitle
			f.input :category, :label => 'Category', :as => :select, :collection => ["weddings", "birthdays", "custom"]
			f.input :description
			f.input :main_image
		end

		f.inputs do
			f.has_many :images do |i|
				i.input :image, label: 'Images',
				as: :file
			end
		end
		f.actions
	end

	config.filters = false
end
