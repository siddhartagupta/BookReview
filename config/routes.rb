Rails.application.routes.draw do
  devise_for :users
	root to: 'books#index'
	resources :books do
		resources :reviews
	end
	get '/books/:id', to: 'books#destroy', as: 'book_delete'
	get '/books/:book_id/reviews/:id', to: 'reviews#destroy', as: 'review_delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
