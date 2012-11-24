class JsonpasswordController < Devise::PasswordsController
	def create
		respond_to do |format|
			format.html { super }
			format.json {
				self.resource = resource_class.send_reset_password_instructions(params[:user])

			    if successfully_sent?(resource)
			      #respond_with({}, :location => after_sending_reset_password_instructions_path_for(resource_name))
			      render :status => 200, :json => { :error => "Success" }
			    else
			      #respond_with(resource)
			      #render :status => 200, :json => { :error => "Fail" }

			      #Lets be a jerk, and always submit success, so you can't mine emails?
			      render :status => 200, :json => { :error => "Success" }
			    end
			}
		end
	end
end