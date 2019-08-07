class Comment < ApplicationRecord
  belongs_to :todo
  belongs_to :user

  validates :text, presence: true

  enum status: [ :agnostic, :liked, :disliked ]
  scope :descending, -> { order(created_at: :desc) } 

end