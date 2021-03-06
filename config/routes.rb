Rails.application.routes.draw do
  resources :profiles, only: [:show, :create, :update]
  resources :workouts, only: [:index, :show, :create, :update, :destroy]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/workouts/find/:date' => 'workouts#findByDate'
  resources :users, only: [:index, :show]
end
