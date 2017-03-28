Rails.application.routes.draw do
  resources :comments
  resources :posts
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/archive'

  get 'static_pages/index'

  get 'posts/new'

  get 'posts/edit'

  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
