ActiveAdmin.register Testimonial do
menu parent: "Sections"
permit_params :image, :testimonial, :name, :company

end
