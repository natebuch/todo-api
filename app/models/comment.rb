class Comment < ApplicationRecord
  belongs_to :todo
  belongs_to :user

  enum status: [ :agnostic, :liked, :disliked ]

end