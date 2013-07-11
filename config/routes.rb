Moviez::Application.routes.draw do
  root :to => 'movies#index'
  get 'movies/search' => 'movies#search'
  resources :movies
  #create
  #update
  #destroy
  #read
  #show

end
