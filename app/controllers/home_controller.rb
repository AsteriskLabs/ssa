class HomeController < ApplicationController
	def index
		# if user_signed_in?
		# 	@user_status = {
		# 		:status => 1,
		# 		:email => current_user.email,
		# 		:logouturl => destroy_user_session_path
		# 	}.to_json
		# else 
		# 	@user_status = {
		# 		:status => 0,
		# 		:signupurl => new_user_registration_path,
		# 		:loginurl => new_user_session_path
		# 	}.to_json
		# end
	end
end
