require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
    before(:each) do
      @category = Category.create(name: "new category")
      @product = Product.new(
        name: "new product",
        price: 13.00,
        quantity: 13,
        category: @category
        )
    end

    it "ensures that a product with all four fields set will indeed save successfully" do
      expect(@product.save).to be true
    end

    it "validates presence of name" do
      @product.name = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it "validates presence of price" do
      @product.price_cents = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it "validates presence of quantity" do
      @product.quantity = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "validates presence of category" do
      @product.category = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
  end
end
