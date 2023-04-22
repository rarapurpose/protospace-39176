Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
end

  resources :prototypes do
    resources :comments, only: :create,
  end
   
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

end
 