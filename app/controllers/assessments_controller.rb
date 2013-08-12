class AssessmentsController < ApplicationController
	def fetch
		if user_signed_in?
			render :status => 200, :json => current_user.assessments.where("title = ?","default").order("id DESC").limit(1).to_json
		else
			render :status => 200, :json => { :error => "error" }
		end
	end

	def create
		if user_signed_in?

		else
			render :status => 200, :json => { :error => "error" }
		end
	end
end