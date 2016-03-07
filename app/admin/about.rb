ActiveAdmin.register About do

menu parent: "Sections"
permit_params :title, :subtitle, :description

config.filters = false
end
