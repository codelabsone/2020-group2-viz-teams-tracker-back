Rails.application.routes.draw do
  namespace :api, defaults: { format: :json} do
    namespace :teams do
      post :create
    end
  end
end
