require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
require_relative '../spec_helper.rb'

Capybara.default_driver = :selenium
Capybara.app_host = "http://shoestore-manheim.rhcloud.com/"


describe "Signing up for email reminder" do
	it "displays a text box to input email" do
		visit "/months/may"
		find_by_id "remind_email_input"
	end

	it "sends email confirmation on successful submission" do
		visit ""
		fill_in('email', :with => 'me@me.com')
  		find(:xpath, "//input[@name='email']").native.send_keys(:return)
		page.should have_content('Thanks!  We will notify you of our new shoes at this email: me@me.com')
	end	
end