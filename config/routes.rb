Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/courses" => "courses#index"
    post "/courses" => "courses#create"
    get "/courses/:name" => "courses#show"
    patch "/courses/:name" => "courses#update"
    delete "/courses/:name" => "courses#destroy"

    get "/users" => "users#index"
    post "/users" => "users#create"
  end
end
