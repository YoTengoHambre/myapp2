class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  
	after_create_commit { CommentUpdateJob.perform_later(self, self.user) }

  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }  

  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }

  self.per_page = 2
end
