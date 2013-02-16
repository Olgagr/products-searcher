require 'spec_helper'

describe Product do

  context 'new product' do

    it 'should not be valid without name' do
      product = Product.new
      product.should_not be_valid
    end

  end

end
