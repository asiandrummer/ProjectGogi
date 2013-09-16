class ManageGroupController < ApplicationController
	before_filter :authenticate_user!

	def manage
		@user    = current_user
		@members = @user.members.all
		@new_member  = Member.new
	end

	def add_member
		@new_member = current_user.members.build(member_params)
		if @new_member.save
			flash[:success] = "A new member has been added!"
			respond_to do |f|
				f.js
			end
		else
			flash[:alert] = "A problem has been occurred. Please try again."
		end
	end

	def update_member
		@member = Member.find(params[:member][:member_id])
		if @member.update_attributes(member_params.except(:member_id))
			respond_to do |f|
				f.js
			end
		end
	end

	def update_profile
		@user = User.find(current_user.id)
		if @user.update_attributes(user_params)
			sign_in @user, :bypass => true
			flash[:success] = "Profile successfully updated."
			redirect_to manage_group_path
		else
			# Display error messages
			flash[:alert] = "Please check your password."
			redirect_to manage_group_path
		end
	end

	def get_all_members
		@members = Member.all
		respond_to do |f|
			f.xml { render xml: @members }
		end
	end

	private

	def user_params
		params.required(:user).permit(:password, :password_confirmation)
	end

	def member_params
		params.required(:member).permit(:name, :member_id)
	end
end
