Rails.application.routes.draw do

  resources :qnas do
		resources :qna_comments, only: [:create, :destroy]
	end
	
	resources :cafes
	
  devise_for :users
  root 'home#index'
	
end
