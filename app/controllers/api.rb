class Api::ManageGroupController < ApplicationController
	# before_filter :fetch_member, :except => [:index]

	def fetch_member
		# @member = Member.find(params[:id])
	end

	def index
		respond_with Member.all
	end

	def show
		respond_to do |f|
			f.xml { render xml: @member }
		end
	end
end