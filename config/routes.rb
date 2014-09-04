Metube::Application.routes.draw do

  root to: "welcome#index"

  resources :videos, :except => [:edit] do
    resources :comments, :only => [:create, :update]
  end
  resources :sounds

end
