class Todo < ApplicationRecord
  has_many :comments, -> { order(created_at: :desc) }
  belongs_to :user

  validates :name, presence: true
  
  scope :descending, -> { order(created_at: :desc) } 
end
