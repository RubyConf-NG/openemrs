require 'rails_helper'

RSpec.describe 'Creating a doctor', type: :feature do
  scenario 'valid inputs' do
    visit new_doctor_path
    fill_in 'Name', with: 'John Doe'
    fill_in 'Email', with: 'example@gmail.com'
    fill_in 'Date of birth', with: 'Mon, 12 Oct 2020'
    # fill_in 'Gender', with: 'Male'
    fill_in 'Phone number', with: '08033594899'
    fill_in 'Password', with: 'password'
    click_on 'Sign up'
    visit root_path
    expect(page).to have_content('Signed in as: example@gmail.com')
  end
end
