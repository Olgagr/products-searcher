require 'spec_helper'

describe Shop do

  context "new shop" do

    it "should not be valid without name" do
      @shop = Shop.create(street: 'Main Street 28', postal_code: '0999', city: 'Warsaw')
      @shop.errors[:name].should_not be_empty
    end

    it "should not be valid without street" do
      @shop = Shop.create(name: 'Hit', postal_code: '0999', city: 'Warsaw')
      @shop.errors[:street].should_not be_empty
    end

    it "should not be valid without city" do
      @shop = Shop.create(name: 'Hit', street: 'Main Street 28', postal_code: '0999')
      @shop.errors[:city].should_not be_empty
    end

  end
end
