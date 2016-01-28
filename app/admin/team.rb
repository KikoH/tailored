ActiveAdmin.register Team do

menu parent: "Sections"
permit_params :title, :subtitle, :image, :name, :position, :email, :description


end
