class Portfolio < ActiveRecord::Base
	has_many :images, dependent: :destroy
	accepts_nested_attributes_for :images, :allow_destroy => true

	mount_uploader :main_image, ImageUploader

	default_scope { order('created_at DESC') }

	validates :main_image, file_size: { less_than_or_equal_to: 560.kilobytes.to_i }
end
