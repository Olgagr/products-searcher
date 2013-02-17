require 'spec_helper'

describe 'Product management' do

  before do
    @product = FactoryGirl.create(:product)
  end

  it 'creates new product' do
    visit products_path
    click_link 'Add New Product'
    fill_in 'Name', with: @product.name
    fill_in 'Description', with: @product.description
    click_button 'Save'
    current_path.should == products_path
    within_table 'products-list' do
      page.should have_content(@product.name)
    end
  end

  it 'shows errors if new product fields are filled incorrectly' do
    visit products_path
    click_link 'Add New Product'
    click_button 'Save'
    page.should have_selector('.alert-error')
  end

  it 'edits existing product' do
    visit products_path
    click_link 'Edit'
    fill_in 'Name', with: 'New name for product'
    click_button 'Save'
    current_path.should == products_path
    within_table 'products-list' do
      page.should have_content('New name for product')
    end
  end

end