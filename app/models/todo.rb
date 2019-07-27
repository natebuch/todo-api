class Todo < ApplicationRecord
  has_many :comments
  belongs_to :user
  
  scope :descending, -> { order(created_at: :desc) } 
end
