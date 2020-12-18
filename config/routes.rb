Rails.application.routes.draw do
  namespace :api, defaults: { format: :json} do
    namespace :teams do
      get :index
      post :create
      delete :delete
    end
    namespace :members do
      get :index
      post :create
      delete :delete
    end
  end
end


