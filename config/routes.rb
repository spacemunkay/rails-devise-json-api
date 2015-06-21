RailsDeviseJSONAPI::Application.routes.draw do

  devise_for :users

  root :to => 'site#index'
  ###########################
  # API Routes
  scope 'api', :module => :api, defaults: {format: :json} do
    scope 'v1', :module => :v1 do
      post 'reset'    => "users#password_reset", :as => "api_password_reset"
    end
  end

end
