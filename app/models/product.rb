class Product < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :name, presence: true
    validates :cost, presence: true
    validates :country_of_origin, presence: true
    before_save(:titleize_product)
    scope :most_recent, -> (product_parameter) { order(created_at: :desc).limit(3) }
    scope :made_in_usa, -> (product_parameter) { where(country_of_origin: "USA") }

    private
      def titleize_product
        self.name = self.name.titleize
      end
  end