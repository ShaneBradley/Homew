Rails.application.routes.draw do
  resources :blogs
  
    root to: "pages#home"
  
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/faq'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
