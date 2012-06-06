require 'spec_helper'

describe "Static Pages" do
   
   let(:base_title){"Ruby on Rails Tutorial Sample Application"} 
   
   describe "Home page" do
      it "should have the content 'Super_exa_app'" do
	 visit '/'
	 page.should have_selector('h1', :text =>'Super_exa_app')
      end
   
		it "should have the title 'Home'" do
	 visit root_path
	 page.should have_selector('title',
		  :text => "Ruby on Rails Tutorial Sample Application")
      end

		it"should have a custom page title" do
	 visit root_path
	 page.should_not have_selector("title",
		  :text => ' | Home')
		end
	end

   describe "Help page" do
      it "should have the content 'Help'" do
	 visit help_path
	 page.should have_selector('h1', :text =>'Help')
      end

      it "should have the title 'Help'" do
	 visit help_path
	 page.should have_selector('title',
		  :text => "#{base_title}Help")
      end      
   end

   describe "About page" do
      it "should have the content 'About us'" do
	 visit about_path
	 page.should have_selector('h1', :text =>'About us')
      end

      it "should have the title 'About us'" do
	 visit about_path
	 page.should have_selector('title',
		  :text => "#{base_title}About us")
      end
   end

   describe "Contact page" do
      it "should have the content 'Contact'" do
	 visit contact_path
	 page.should have_selector('h1', :text =>'Contact')
      end

      it "should have the title 'Contact'" do
	 visit contact_path
	 page.should have_selector('title',
		  :text => "#{base_title}Contact us")
      end
   end
end

