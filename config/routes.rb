Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :caregivers
  resources :children
  get '/children/:id/listpotties', to: 'children#list_potties'
end
