Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'questions/show'
  get 'questions/result'
  get 'questions/search'
  get 'questions/beforeresult', as: 'beforeresult'

  devise_for :users
  root to: 'pages#home'
  resources :pages
  resources :categories, only: [:index, :show]
  resources :quiz do
    resources :quiz_sessions, only: [:create]
  end
  resources :quiz_sessions, except: :create do
    get 'last_question', to: 'last_questions#show'
    resources :user_answers, only: :create
    resources :questions, only: [:show] do
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
