class Intro < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	validates :image, file_size: { less_than_or_equal_to: 0.7.megabytes.to_i }
end
