class JsonuserController < Devise::RegistrationsController
	def create
		respond_to do |format|
			format.html { super }
			format.json {
				build_resource(devise_parameter_sanitizer.sanitize(:sign_up))

				if resource.save
					if resource.active_for_authentication?
						sign_up(resource_name,resource)
						render :status => 200, :json => { :error => "Success", :message => "Logged in" }
					else 
						expire_data_after_sign_in!
						render :status => 200, :json => { :error => "Success", :message => "Not logged in" }
					end
				else
					clean_up_passwords resource
					render :status => 200, :json => { :error => "Failed" }
				end
			}
		end
	end
end