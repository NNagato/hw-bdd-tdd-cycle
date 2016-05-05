Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  #root 'movies#index'
  root :to => redirect('/movies')
  #get 'same_director' => 'movies#same_director'
  get 'movies/same_director/:id' => 'movies#same_director', :as => :same_director
end
