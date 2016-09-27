class Room < ApplicationRecord
  validates :accommodates, :numericality => { :greater_than_or_equal_to => 0}
  validates :description,:price, presence: true
  belongs_to :user
end
