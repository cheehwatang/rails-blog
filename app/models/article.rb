class Article < ApplicationRecord
  validates :title, :body, presence: true, length: { minimum: 6 }
end
