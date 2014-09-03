require 'rails_helper'

describe "the signin process" do

  it "signs an user in who uses the right password" do
    visit '/sessions/new'
    user = User.create(:email => "katharinechen.ny@gmail.com", :password => "1234")
    fill_in 'Email', :with => "katharinechen.ny@gmail.com"
    fill_in 'Password', :with => "1234"
    click_button 'Log In'
    page.should have_content 'Logged in'
  end

  it "does not signs an user in who uses the wrong password" do
    visit '/sessions/new'
    user = User.create(:email => "katharinechen.ny@gmail.com", :password => "1234")
    fill_in 'Email', :with => "katharinechen.ny@gmail.com"
    fill_in 'Password', :with => "4569"
    click_button 'Log In'
    page.should have_content 'Email or password is invalid'
  end

end



