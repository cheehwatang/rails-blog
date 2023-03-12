class Article < ApplicationRecord
  has_one_attached :photo
  
  validates :title, :body, presence: true, length: { minimum: 1 }
end
