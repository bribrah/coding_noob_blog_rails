class Comment < ApplicationRecord
    belongs_to :post

    validates :author_name, presence: true, length: {maximum: 50}
    validates :body, presence: true, length: {maximum: 250}
end
