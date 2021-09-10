Rails.application.routes.draw do
root 'api#v1'

  namespace :api do
    namespace :v1 do
      resources :cities, param: :slug
      resources :reviews, only: [:create, :destroy, :show, :index]
    end
  end

end