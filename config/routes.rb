Rails.application.routes.draw do
  resources :qnas do
		resources :qna_comments, only: [:create, :destroy]
	end
	
  devise_for :users
  root 'home#index'
	
end
