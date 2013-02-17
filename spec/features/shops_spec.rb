require 'spec_helper'

describe 'Shop management' do

  before do
    @shop = FactoryGirl.create(:shop)
  end

  it 'creates new shop' do
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

  it 'shows errors if shop data are incorrect' do
    visit shops_path
    click_link 'Add New Shop'
    click_button 'Save'
    page.should have_selector('.alert-error')
  end

  it 'edit shop' do
    visit shops_path
    click_link 'Edit'
    fill_in 'Name', with: @shop.name
    fill_in 'Street', with: @shop.street
    fill_in 'Postal Code', with: @shop.postal_code
    fill_in 'City', with: @shop.city
    click_button 'Save'
    current_path.should == shops_path
    page.should have_selector('.alert-success')
  end

  xit 'shows errors if edited shop data are incorrect' do
    visit shops_path
    click_link 'Edit'
    fill_in 'Name', with: ''
    fill_in 'Street', with: ''
    click_button 'Save'
    page.should have_selector('.alert_error')
  end

end