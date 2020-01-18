require 'rails_helper'

describe Product do
    it { should have_many(:reviews) }
    it { should validate_presence_of :name }
    it { should validate_presence_of :cost }
    it { should validate_presence_of :country_of_origin }
  end
  describe Product do
    it("titleizes the name of an product") do
      product = Product.create({name: "cheese wiz", cost: "2", country_of_origin:"US"  })
      expect(product.name()).to(eq("Cheese Wiz"))
    end
  end