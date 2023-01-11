Rails.application.routes.draw do
  get 'privacy/index'
  get 'imprint/index'
  get 'categories/index'
  get 'news/index'
  resources :recipes do
    collection do
      get "ingredient_field"
    end
  end
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
