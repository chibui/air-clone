class Room < ApplicationRecord
  # validates so that accommodates is greater than 0
  validates :accommodates, :numericality => { greater_than: 0 }
  validates :description,:price, presence: true
  belongs_to :user
  serialize :images, Array
  mount_uploaders :images, ImageUploader
end
