class Post < ApplicationRecord
	validates :title, :content, :presence => true
	validates :title, :length => { :minimum => 2 }
	validates :title, :uniqueness => { :message => "is already taken" }
	mount_uploader :image, ImageUploader 
end
