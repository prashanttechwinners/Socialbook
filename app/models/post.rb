class Post < ApplicationRecord
  #scope :description, -> { Post.where("LENGTH(description) > 5") }
  #scope :description, ->(length >= 5) { where("LENGTH(description) > ?", length) }
  has_one_attached :photo
  
  belongs_to :user, optional: true
  
  validates :description, length: { minimum: 2, message: "Description must be min.2 letter"}
  has_many :comments, dependent: :destroy
end
