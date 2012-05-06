class JsonsessionController < Devise::SessionsController
	def create
		respond_to do |format|
			format.html { super }
			format.json {
				resource = warden.authenticate!(auth_options)
				sign_in(resource_name, resource)
				render :status => 200, :json => { :error => "Success" }
			}
		end
	end
end