Moviez::Application.routes.draw do
  root :to => 'movies#index'
  get '/search' => 'movies#search'
  get '/show_search_result' => 'movies#show_search_result'
  resources :movies
  #create
  #update
  #destroy
  #read
  #show

end
