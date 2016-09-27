class Image < ApplicationRecord
  mount_uploader :picture,ImagePictureUploader
end
