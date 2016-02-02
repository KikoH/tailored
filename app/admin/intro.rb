ActiveAdmin.register Intro do

menu parent: "Sections"
permit_params :title, :description, :image, :scroll

index do
  column :title
  column :description
  column :image
 end

form do |f|
      f.inputs :title, :description, :image, :scroll
      f.actions
end

end
