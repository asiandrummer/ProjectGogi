require 'spec_helper'

describe Member do
	before {
		@member = Member.new(name: "John Doe", user_id: "1")
	}

	subject { @member }

	it { should respond_to(:name) }
	it { should respond_to(:user_id) }

	it { should be_valid }

	describe "when name is not present" do
		before { @member.name = " " }
		it { should_not be_valid }
	end

	describe "when user_id is not present" do
		before { @member.user_id = " " }
		it { should_not be_valid }
	end

end
