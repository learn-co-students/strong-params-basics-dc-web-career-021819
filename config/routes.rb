Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/new', to: 'posts#new', as: :posts_new
  get 'posts/', to: 'posts#index', as: :posts_index

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

end
