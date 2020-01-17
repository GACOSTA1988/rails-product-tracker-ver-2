class Review < ApplicationRecord
    belongs_to :product
    validates :author, presence: true
    validates :content_body, presence: true
    validates :rating, presence: true
    validates :content_body, length: { minimum: 50 }
    validates :content_body, length: { maximum: 250 }
  end