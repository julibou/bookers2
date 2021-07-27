Rails.application.routes.draw do

    devise_for :users
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'homes#top'
    resources :books
    resources :users
   get 'homes/about' => 'homes#about',as:'about'
   post 'books' => 'books#create'
end