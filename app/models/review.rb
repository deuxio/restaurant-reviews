class Review < ActiveRecord::Base
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: [0,1,2,3,4,5] }

  belongs_to :restaurant
end