class Article < ApplicationRecord
  has_many_attached :photos
  
  validates :title, :body, presence: true, length: { minimum: 1 }
end
