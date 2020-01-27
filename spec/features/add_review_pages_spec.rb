
require 'rails_helper'

describe('Create a product path', { :type => :feature } ) do
before(:each) do
  visit('/products')
  find_link('Sign Up').click
  fill_in('Email', :with => "abc@gmail.com")
  fill_in('Password', :with => 'test111@')
  fill_in('Password confirmation', :with => 'test111@')
  click_on('Sign up')
end

  it('creates a product and then creates a review') do
    visit('/products')
    click_on("Create new product")
    fill_in('Name', :with => 'cheese wiz')
    fill_in('Cost', :with => '2')
    fill_in('Country of origin', :with => 'USA')
    click_on("Create Product")
    find_link('Cheese Wiz').click
    click_on("Add a review")
    fill_in('Author', :with => 'Elaine')
    fill_in('Content body', :with => 'Nam quis nulla. Integer malesuada. In in enim a arcu imperdiet malesuada. Sed vel lectus. Donec odio')
    fill_in('Rating', :with => '2')
    click_on("Create Review")
    expect(page).to have_content('Elaine')
  end
end

