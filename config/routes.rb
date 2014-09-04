Metube::Application.routes.draw do

  root to: "welcome#index"

  resources :videos do
    resources :comments, :only => [:index, :create]
  end
  resources :sounds

end
