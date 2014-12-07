require 'grape'
module Technician
	class API < Grape::API
		helpers do
			def current_user
				@current_user ||= User.authorize!(env)
			end

			def authenticate!
				error!('401 Unauthorized', 401) unless current_user
			end
		end

		resource :users do
			desc "Returns a user email."
			params do
				requires :id, type: Integer, desc: "User ID"
			end
			route_param :id do
				get do
          User.find(params[:id]).email
				end
			end
		end

    		# Mount the swagger docs
    add_swagger_documentation(
      base_path: "/api",
      hide_documentation_path: true
    )

	end
end