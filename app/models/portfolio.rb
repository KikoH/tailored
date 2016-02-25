class Portfolio < ActiveRecord::Base
	has_many :images, dependent: :destroy
	accepts_nested_attributes_for :images, :allow_destroy => true

	mount_uploader :main_image, ImageUploader

	default_scope { order('created_at ASC') }
end
