class Room < ApplicationRecord
  # validates so that accommodates is greater than 0
  validates :accommodates, :numericality => { greater_than: 0 }
  validates :description,:price, presence: true
  belongs_to :user
  serialize :images, Array
  mount_uploaders :images, ImageUploader

  def self.search(search)
    #performs search on name and description fields
    where("name LIKE ? or description LIKE ?", "%#{search}%", "%#{search}%")
  end

end
