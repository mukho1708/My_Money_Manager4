require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'My Money Manager'" do
      visit root_path
      page.should have_selector('h1', :text => 'My Money Manager')
    end
    
    it "should have the base title" do
	    visit root_path
	    page.should have_selector('title',
                    :text => "My Money Manager")
	    end

    it "should not have a custom page title" do
	    visit root_path
	    page.should_not have_selector('title', :text => '- Home')
	    end
    end
  
  describe "Partners page" do

    it "should have the content 'Our Partners'" do
      visit partners_path
      page.should have_selector('h1', :text => 'Our Partners')
    end
    
    it "should have the right title" do
	    visit partners_path
	    page.should have_selector('title',
                    :text => "My Money Manager - Partners")
	    end
  end
  
   describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    
    it "should have the right title" do
	    visit about_path
	    page.should have_selector('title',
                    :text => "My Money Manager - About")
	    end
    end
    
    describe "Contact page" do

    it "should have the content 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact Us')
    end
    
    it "should have the right title" do
	    visit contact_path
	    page.should have_selector('title',
                    :text => "My Money Manager - Contact")
	    end
  end
end