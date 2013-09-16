require 'spec_helper'

describe User do
	before {
		@user = User.new(name: "Example User",
						 password: "examplepw", password_confirmation: "examplepw",
						 email: "example@example.com")
	}

	subject { @user }

	it { should respond_to(:name) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
	it { should respond_to(:email) }

	it { should be_valid }

	describe "when name is not present" do
	    before { @user.name = " " }
	    it { should_not be_valid }
	end

	describe "when email is not present" do
		before { @user.email = " " }
		it { should_not be_valid }
	end

	describe "when email format is valid" do
		it "should be valid" do
			addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@user.email = valid_address
				expect(@user).to be_valid
			end
		end
	end

	describe "when password is not present" do
		before do
			@user = User.new(name: "Example User", password: " ", password_confirmation: " ")
		end
		it { should_not be_valid }
	end

	describe "when password doesn't match confirmation" do
		before { @user.password_confirmation = "mismatch" }
		it { should_not be_valid }
	end

end
