Rails.application.routes.draw do
  resources :contact
  root to: "static_pages#index"
  get "/contact" => "static_pages#contact"
end
