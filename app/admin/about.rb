ActiveAdmin.register About do

menu false
permit_params :title, :subtitle, :description

config.filters = false
end
