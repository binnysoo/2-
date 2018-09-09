class Comment < ApplicationRecord
	belongs_to :post
	mount_uploader :img_url, ImageUploader
end
