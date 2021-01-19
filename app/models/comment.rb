class Comment < ApplicationRecord
  belongs_to :post
  validates :title, :body, presence: true
end
