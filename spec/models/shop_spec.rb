require 'spec_helper'

describe Shop do

  before do
    @shop = build(:shop)
  end

  context 'new shop' do

    it 'should not be valid without name' do
      @shop.name = ''
      @shop.save
      @shop.errors[:name].should_not be_empty
    end

    it 'should not be valid without street' do
      @shop.street = ''
      @shop.save
      @shop.errors[:street].should_not be_empty
    end

    it 'should not be valid without city' do
      @shop.city = ''
      @shop.save
      @shop.errors[:city].should_not be_empty
    end

  end

  it 'should returns full address' do
    @shop.full_street_address.should == 'Smocza 26, 01-041 Warszawa'
  end
end
