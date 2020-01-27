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

  it('creates a product and then goes to products page') do
    visit('/products')
    # click_on("View Current Divisions")
    click_on("Create new product")
    # save_and_open_page
    fill_in('Name', :with => 'cheese wiz')
    fill_in('Cost', :with => '2')
    fill_in('Country of origin', :with => 'USA')
    click_on("Create Product")
    expect(page).to have_content('New product successfully added!')
  end
end
