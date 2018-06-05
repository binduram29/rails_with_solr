Rails.application.routes.draw do
  resources :ideas
  root to: redirect('/ideas')
  match "ideas/search" => "ideas#search", as: :idea_search, via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
