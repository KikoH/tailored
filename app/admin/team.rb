ActiveAdmin.register Team do

	menu parent: "Sections"
	permit_params :title, :subtitle, :image, :name, :position, :email, :description

	form do |f|
		f.inputs :title, :subtitle, :image, :name, :position, :email
		f.input :description, :input_html => {:rows => 5, :cols => 50},  as: :text
		f.actions
	end
end
