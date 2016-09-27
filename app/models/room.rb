class Room < ApplicationRecord
  # validates so that accommodates is greater than 0
  validates :accommodates, :numericality => { greater_than: 0 }
  validates :description,:price, presence: true
  belongs_to :user
  mount_uploader :picture,RoomPictureUploader
end
