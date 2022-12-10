class Post < ApplicationRecord
  
  has_one_attached :photo
  
  belongs_to :user, optional: true
  
  validates :description, length: { minimum: 2, message: "Description"}
end
