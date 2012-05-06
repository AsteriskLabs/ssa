class JsonuserController < Devise::RegistrationsController
	def create
		respond_to do |format|
			format.html { super }
			format.json {
				build_resource

				if resource.save
					if resource.active_for_authentication?
						sign_in(resource_name,resource)
						render :status => 200, :json => { :error => "Success", :message => "Logged in" }
					else 
						expire_session_data_after_sign_in!
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