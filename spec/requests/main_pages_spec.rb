require 'spec_helper'

describe "MainPages" do
	
	subject { page }

	describe "home/calendar page, not logged in", :type => :feature do
		before { visit "/home" }
		it { should have_content("NCBC Timothy Calendar") }
		it { should have_content("Sign in") }
	end

end
