Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
			get '/categories',to: "categories#category"	
			get '/category/:id',to: "categories#show"	
		end	
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
