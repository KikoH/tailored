ActiveAdmin.register Intro do

	menu parent: "Sections"
	permit_params :title, :description, :image, :scroll

	index do
		selectable_column
		column "Title" do |intro|
			link_to intro.title, admin_intro_path(intro)
		end
		column :description
		column :image
	end

	index as: :grid, default: true do |intro|
		resource_selection_cell intro
		a href: admin_intro_path(intro) do
        div intro.title
        img src: intro.image_url(:thumb), alt: intro.title
    end
	end

	form do |f|
		f.inputs "Intros" do
			f.input :title
			f.input :description, :input_html => { :maxlength => 50 }	
			f.input :image, label: "Image",
			as: :file, :hint => image_tag(f.object.image.url(:thumb))
			f.input :scroll, :label => 'Scroll to section', :as => :select, :collection => ["work", "about", "contact"], :selected => "about"
		end
		f.actions
	end

	config.filters = false
end
