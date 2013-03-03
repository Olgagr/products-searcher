require 'spec_helper'

describe Product do

  before do
    @product = build(:product)
  end

  context 'new product' do

    it 'should not be valid without name' do
      @product.name = ''
      @product.save
      @product.errors[:name].should_not be_empty
    end

  end

end
