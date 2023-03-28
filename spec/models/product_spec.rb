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
    it "contains a price" do
      category = Category.new(name: 'price')
      product = Product.new
      product.name = 'test'
      product.price_cents = nil
      product.category = category
      product.quantity = 4
      expect(product).to_not be_valid
    end
    # it "contains a quantity" do

    # end
    # it "contains a category" do

    # end
    # it "contains a name" do
    #   # product = Product.new
    #   expect(JSON.parse(response.body)['name']).to eq('Test Product Full')
    # end
  end
end
