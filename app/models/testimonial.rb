class Testimonial < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	default_scope { order('created_at DESC') }

	validates :image, file_size: { less_than_or_equal_to: 0.5.megabytes.to_i }
end
