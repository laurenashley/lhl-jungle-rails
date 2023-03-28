require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "saves successfully with all fields valid" do
      category = Category.new(name: 'name')
      product = Product.new
      product.name = 'test'
      product.price_cents = '2399'
      product.category = category
      product.quantity = 4
      expect(product).to be_valid
    end

    it "contains a name" do
      category = Category.new(name: 'name')
      product = Product.new
      product.name = nil
      product.price_cents = '2399'
      product.category = category
      product.quantity = 4
      expect(product).to_not be_valid
    end

    it "contains a price" do
      category = Category.new(name: 'price')
      product = Product.new
      product.name = 'test'
      product.price_cents = nil
      product.category = category
      product.quantity = 4
      expect(product).to_not be_valid
    end

    it "contains a quantity" do
      category = Category.new(name: 'quantity')
      product = Product.new
      product.name = 'test'
      product.price_cents = '2399'
      product.category = category
      product.quantity = nil
      expect(product).to_not be_valid
    end

    it "contains a category" do
      product = Product.new
      product.name = 'test'
      product.price_cents = '2399'
      product.category = nil
      product.quantity = 4
      expect(product).to_not be_valid
    end
  end
end
