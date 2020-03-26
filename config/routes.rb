Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to:  'bookers#top'
    post 'books' => 'bookers#create'
    get 'books' => 'bookers#index'
    get 'books/:id' => 'bookers#show', as: 'book'
    get 'books/:id/edit' => 'bookers#edit', as: 'edit_book'
    patch 'books/:id' => 'bookers#update', as: 'update_book'
    put 'books/:id' => 'bookers#update'
    delete 'books/:id' => 'bookers#destroy', as: 'destroy_book'
end
