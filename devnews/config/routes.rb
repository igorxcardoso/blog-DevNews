Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'artigos#index'
	# get '/artigos', to: 'artigos#index'
  # get '/artigos/:id', to: 'artigos#show'
  
  resources :artigos
  # Referência do resource:   https://guiarails.com.br/routing.html
  # O resources vai trazer todas as informações de crud, inclusive os helps.
  # Ao inves de colocar um a um o resource vai trazer tudo.
  # O resource cria sete rotas diferentes na aplicação, todas mapeando para o controller artigos.
  # Essas sete rotas são, no caso de artigos: artigos#index, artigos#new,  	artigos#create, artigos#show, artigos#edit, artigos#update, artigos#destroy
end
