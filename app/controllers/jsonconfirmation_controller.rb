class JsonconfirmationController < Devise::RegistrationsController
	def create
		respond_to do |format|
			format.html { super }
			format.json {
				self.resource = resource_class.send_confirmation_instructions(params[:user])

    			if successfully_sent?(resource)
      				#respond_with({}, :location => after_resending_confirmation_instructions_path_for(resource_name))
      				render :status => 200, :json => { :error => "Success" }
    			else
    				render :status => 200, :json => { :error => "Failllled" }
    			end
			}
		end
	end
end