Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root "static_pages#home"
  get "/about", to: "static_pages#about"
  get "/projects", to: "static_pages#projects"
  get "/admin", to: "posts#admin"
  resources :posts
end
