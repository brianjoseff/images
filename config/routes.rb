Images::Application.routes.draw do
  resources :assets

  root :to => "assets#new"
end
