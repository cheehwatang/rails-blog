class Article < ApplicationRecord
  has_rich_text :rich_body
  
  validates :title, :body, presence: true, length: { minimum: 1 }
end
