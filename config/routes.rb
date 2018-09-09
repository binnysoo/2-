Rails.application.routes.draw do
    devise_for :users
	root 'main#index'
  	get 'main/index'
  	get 'main/new'
  	post 'main/create'
  	#get 'main/show'
  	get 'main/show/:post_id' => 'main#show'
  	#get 'main/destroy'
  	get 'main/destroy/:post_id' => 'main#destroy'
  	#get 'main/edit'
  	get 'main/edit/:post_id' => 'main#edit'
  	#post 'main/update'
  	post 'main/update/:post_id' => 'main#update'
    post 'main/comment/create/:post_id' => 'main#comment_create'
    get 'main/comment/destroy/:post_id/:comment_id' => 'main#comment_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
