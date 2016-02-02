ActiveAdmin.register Intro do

menu parent: "Sections"
permit_params :title, :description, :image, :scroll

end
