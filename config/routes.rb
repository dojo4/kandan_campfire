KandanCampfire::Engine.routes.draw do
  resources :rooms, :only => [:index]
  resources :room do
    post :speak
  end
end
