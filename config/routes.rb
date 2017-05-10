Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :notes
  devise_for :users
  root 'notes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
