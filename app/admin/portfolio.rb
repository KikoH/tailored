ActiveAdmin.register Portfolio do

	menu parent: "Sections"
	permit_params :title, :description, :subtitle, :category, :main_image, images_attributes: [:id, :image]

	action_item :new, only: :show do
		link_to 'Create another', new_admin_portfolio_path
	end


	index do
		selectable_column
		column "Title" do |portfolio|
			link_to portfolio.title, admin_portfolio_path(portfolio)
		end
		column :description
		column :main_image
	end

	index as: :grid do |portfolio|
		resource_selection_cell portfolio
		a href: admin_portfolio_path(portfolio) do
			div portfolio.title
			img src: portfolio.main_image_url(:thumb), alt: portfolio.title
		end
	end

	form do |f|
		f.inputs "Portfolios" do

			f.input :title
			f.input :subtitle
			f.input :category, :label => 'Category', :as => :select, :collection => ["weddings", "birthdays", "custom"]
			f.input :description
			f.input :main_image, label: "Main Image",
			as: :file, :hint => image_tag(f.object.main_image.url(:thumb))
		end

		f.inputs do
			f.has_many :images do |i|
				i.input :image, label: 'Images',
				as: :file, :hint => i.object.image.nil? ? i.template.content_tag(:span, "No Image Yet") : i.template.image_tag(i.object.image.url(:thumb))
			end
		end
		f.actions
	end
end
