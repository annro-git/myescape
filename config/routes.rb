Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  resources :escape_games do
    resources :scenarios, controller: 'escape_games/scenarios', except: :index
  end
end
