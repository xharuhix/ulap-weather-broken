require 'spec_helper'

describe "StaticUlaps" do

	# describe "GET /static_ulaps" do
 #    it "works! (now write some real specs)" do
 #      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
 #      get static_ulaps_path
 #      response.status.should be(200)
 #    end
 #  end

	describe "Home page" do

		it "should have the content 'Welcome'" do
			visit '/static_ulap/home'
			expect(page).not_to have_title('| Home')
		end
	end 

	describe "Help page" do

		it "should have the content 'Welcome'" do
			visit '/static_ulap/help'
			expect(page).to have_content('Help')
		end
	end

	describe "About page" do

    	it "should have the content 'About ULAP'" do
      		visit '/static_ulap/about'
      		expect(page).to have_content('About ULAP')
    	end
  	end

  	describe "Louie page" do
  		it "should have the content 'Louie'" do
  			visit '/static_ulap/louie'
  			expect(page).to have_content('Louie')
  		end
  	end

end
