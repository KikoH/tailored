ActiveAdmin.register Team do

	menu parent: "Sections"
	permit_params :title, :subtitle, :image, :name, :position, :email, :description

	index do
		selectable_column
		column "Title" do |team|
			link_to team.title, admin_team_path(team)
		end
		column :name
		column :position
	end

	form do |f|
		f.inputs :title, :subtitle, :image, :name, :position, :email
		f.input :description, :input_html => {:rows => 5, :cols => 50},  as: :text
		f.actions
	end
end
