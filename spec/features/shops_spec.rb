require 'spec_helper'

describe "Shop managments" do

  before do
    @shop = FactoryGirl.create(:shop)
  end

  it "creates new shop" do
    visit shops_path
    click_link 'Add New Shop'
    fill_in 'Name', with: @shop.name
    fill_in 'Street', with: @shop.street
    fill_in 'Postal Code', with: @shop.postal_code
    fill_in 'City', with: @shop.city
    click_button 'Save'
    current_path.should == shops_path
    within_table('shops-list') do
      page.should have_content(@shop.name)
    end
  end

  it "shows errors if shop data are incorrect" do
    visit shops_path
    click_link 'Add New Shop'
    click_button 'Save'
    #current_path.should == new_shop_path
    page.should have_selector('.alert-error')
  end


end