class Intro < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
