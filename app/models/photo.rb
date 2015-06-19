class Photo < ActiveRecord::Base
  mount_uploader :picture, PhotoUploader

  validates :picture, presence: true
end
