Rails.application.routes.draw do
  get 'questions/show'
  get 'questions/result'
  get 'categories/index'
  get 'categories/show'
  get 'questions/search'

  devise_for :users
  root to: 'pages#home'
  resources :pages
  resources :category, only: [:index, :show]
  resources :quiz do
    resources :quiz_sessions, only: [] do
      resources :questions, only: [:show] do
        resources :user_answers, only: :create
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
