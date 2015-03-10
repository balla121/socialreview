class Micropost < ActiveRecord::Base
  acts_as_commentable
  acts_as_votable
  belongs_to :category
  belongs_to :reviewed
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :rating, presence: true
  validates :subject, presence: true

  private


end
