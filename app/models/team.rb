class Team < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	validates :image, file_size: { less_than_or_equal_to: 0.5.megabytes.to_i }
end
