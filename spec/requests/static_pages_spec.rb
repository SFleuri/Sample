require 'spec_helper'

describe "Static Pages" do

   describe "Home page" do
      it "should have the content 'Super_exa_app'" do
	 visit'/static_pages/home'
	 page.should have_content('Super_exa_app')
      end
   
      it "should have the title 'Home'" do
	 visit '/static_pages/home'
	 page.should have_selector('title',
		  :text => "Ruby on Rails Tutorial Sample App | Home")
      end
   end

   describe "Help page" do
      it "should have the content 'Help'" do
	 visit'/static_pages/help'
	 page.should have_content('Help')
      end

      it "should have the title 'Help'" do
	 visit '/static_pages/help'
	 page.should have_selector('title',
		  :text => "Ruby on Rails Tutorial Sample App | Help")
      end      
   end

   describe "About page" do
      it "should have the content 'About us'" do
	 visit'/static_pages/about'
	 page.should have_content('About us')
      end

      it "should have the title 'About us'" do
	 visit '/static_pages/about'
	 page.should have_selector('title',
		  :text => "Ruby on Rails Tutorial Sample App | About us")
      end
   end
end
