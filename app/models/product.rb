class Product < ApplicationRecord
    has_many :reviews, dependent: :destroy
    it { should validate_presence_of :name }
  end