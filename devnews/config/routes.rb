Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'artigos#index'
	# get '/artigos', to: 'artigos#index'
  # get '/artigos/:id', to: 'artigos#show'

  resources :artigos
  # O resources vai trazer todas as informações de crud, inclusive os helps
end
