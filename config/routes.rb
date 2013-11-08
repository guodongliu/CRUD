Store::Application.routes.draw do
  root :to => "welcome#index"
  get "welcome" => "welcome#index"
  get "welcome/index"
  get "welcome/goodbye"
  match ':controller(/:action(/:id(.:format)))'
  resources :posts
end
